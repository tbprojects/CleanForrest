class window.EventMap
  tileProvider: 'Thunderforest.Landscape'

  constructor: (@nodeId) ->
    @createMap()
    @createEditableLayers()
    @resetControls()
    @reactOnDraw()
    @locate()

  createMap: ->
    @map = L.map(@nodeId).setView([0,0], 2)
    L.tileLayer.provider(@tileProvider).addTo(@map)

  locate: ->
    @map.once 'locationfound', (e) => @map.setView(e.latlng, 14)
    @map.on 'locationerror', (e) => alert('Failed to fetch geolocation...')
    @map.locate()

  createEditableLayers: ->
    @editableLayers = new L.FeatureGroup()
    @map.addLayer(@editableLayers)

  resetControls: ->
    @map.removeControl(@drawControl) if @drawControl
    markerOptions = {}
    polygonOptions  = {}
    @editableLayers.eachLayer (layer) -> if layer._icon? then markerOptions = false else polygonOptions = false
    @drawControl = new L.Control.Draw
      draw: { polygon: polygonOptions, marker: markerOptions, polyline: false, rectangle: false, circle: false }
      edit: { featureGroup: @editableLayers }
    @map.addControl(@drawControl)

  reactOnDraw: ->
    @map.on 'draw:created', (e) =>
      @editableLayers.addLayer(e.layer)
      @serializeEditableLayers()
      @resetControls()
    @map.on 'draw:edited', (e) =>
      @serializeEditableLayers()
    @map.on 'draw:deleted', (e) =>
      setTimeout((=> @resetControls()), 100)
      @serializeEditableLayers()

  serializeEditableLayers: ->
    #TODO: serialize marker and polygon to the inputs

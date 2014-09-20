SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner:
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';

SET search_path = public, pg_catalog;
SET default_tablespace = '';
SET default_with_oids = false;

--
-- Data for Name: comfy_blog_posts; Type: TABLE DATA; Schema: public; Owner: tomasz
--

COPY comfy_blog_posts (id, blog_id, title, slug, content, excerpt, author, year, month, is_published, published_at, created_at, updated_at) FROM stdin;
1	1	We are online!	we-are-online	<p>Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price.</p>\r\n<p>Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price.</p>		Trash Master	2014	9	t	2014-09-20 10:24:03	2014-09-20 10:24:29.803997	2014-09-20 10:55:30.520943
2	1	New Events are incoming	new-events-incoming	<p>The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy My brothers. And you will know My name is the Lord when I lay My vengeance upon thee.</p>\r\n<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I don't know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that I'm breaking now. We said we'd say it was the snow that killed the other two, but it wasn't. Nature is lethal but it doesn't hold a candle to man.</p>		Trash Master	2014	9	t	2014-09-20 10:31:28	2014-09-20 10:31:45.354828	2014-09-20 10:56:24.273477
\.


--
-- Name: comfy_blog_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tomasz
--

SELECT pg_catalog.setval('comfy_blog_posts_id_seq', 2, true);


--
-- Data for Name: comfy_blogs; Type: TABLE DATA; Schema: public; Owner: tomasz
--

COPY comfy_blogs (id, site_id, label, identifier, app_layout, path, description) FROM stdin;
1	1	Aktualności	news	application		
\.


--
-- Name: comfy_blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tomasz
--

SELECT pg_catalog.setval('comfy_blogs_id_seq', 1, true);


--
-- Data for Name: comfy_cms_blocks; Type: TABLE DATA; Schema: public; Owner: tomasz
--

COPY comfy_cms_blocks (id, identifier, content, blockable_id, blockable_type, created_at, updated_at) FROM stdin;
1	content		1	Comfy::Cms::Page	2014-09-20 10:01:43.938406	2014-09-20 10:11:27.811858
2	content	<p style="text-align: center;"><strong>Application created during "IT w Słusznej Sprawie" hackathon.</strong></p>\r\n<p>The lysine contingency - it's intended to prevent the spread of the animals is case they ever got off the island. Dr. Wu inserted a gene that makes a single faulty enzyme in protein metabolism. The animals can't manufacture the amino acid lysine. Unless they're continually supplied with lysine by us, they'll slip into a coma and die.</p>\r\n<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I don't know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that I'm breaking now. We said we'd say it was the snow that killed the other two, but it wasn't. Nature is lethal but it doesn't hold a candle to man.</p>	2	Comfy::Cms::Page	2014-09-20 10:11:00.265998	2014-09-20 11:15:07.761809
\.


--
-- Name: comfy_cms_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tomasz
--

SELECT pg_catalog.setval('comfy_cms_blocks_id_seq', 2, true);


--
-- Data for Name: comfy_cms_layouts; Type: TABLE DATA; Schema: public; Owner: tomasz
--

COPY comfy_cms_layouts (id, site_id, parent_id, app_layout, label, identifier, content, css, js, "position", is_shared, created_at, updated_at) FROM stdin;
1	1	\N	application	main_layout	main-layout	{{ cms:page:content:rich_text }}			0	f	2014-09-20 09:59:22.859959	2014-09-20 09:59:22.859959
\.


--
-- Name: comfy_cms_layouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tomasz
--

SELECT pg_catalog.setval('comfy_cms_layouts_id_seq', 1, true);


--
-- Data for Name: comfy_cms_pages; Type: TABLE DATA; Schema: public; Owner: tomasz
--

COPY comfy_cms_pages (id, site_id, layout_id, parent_id, target_page_id, label, slug, full_path, content_cache, "position", children_count, is_published, is_shared, created_at, updated_at) FROM stdin;
1	1	1	\N	2	Main Page	\N	/		0	1	t	f	2014-09-20 10:01:43.93395	2014-09-20 11:13:40.15326
2	1	1	1	\N	About authors	about-authors	/about-authors	<p style="text-align: center;"><strong>Application created during "IT w Słusznej Sprawie" hackathon.</strong></p>\r\n<p>The lysine contingency - it's intended to prevent the spread of the animals is case they ever got off the island. Dr. Wu inserted a gene that makes a single faulty enzyme in protein metabolism. The animals can't manufacture the amino acid lysine. Unless they're continually supplied with lysine by us, they'll slip into a coma and die.</p>\r\n<p>You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I don't know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that I'm breaking now. We said we'd say it was the snow that killed the other two, but it wasn't. Nature is lethal but it doesn't hold a candle to man.</p>	0	0	t	f	2014-09-20 10:11:00.256968	2014-09-20 11:15:07.759725
\.


--
-- Name: comfy_cms_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tomasz
--

SELECT pg_catalog.setval('comfy_cms_pages_id_seq', 2, true);


--
-- Data for Name: comfy_cms_sites; Type: TABLE DATA; Schema: public; Owner: tomasz
--

COPY comfy_cms_sites (id, label, identifier, hostname, path, locale, is_mirrored) FROM stdin;
1	CleanForrest	cleanforrest	localhost		pl	f
\.


--
-- Name: comfy_cms_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tomasz
--

SELECT pg_catalog.setval('comfy_cms_sites_id_seq', 1, true);

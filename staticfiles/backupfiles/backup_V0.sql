PGDMP         /                v           wilsite    9.6.5    9.6.5 �    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            	           1262    34572    wilsite    DATABASE     �   CREATE DATABASE wilsite WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE wilsite;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    34604 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    34602    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    192    3            	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    191            �            1259    34614    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    34612    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    3    194            	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    193            �            1259    34596    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    34594    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    3    190            	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    189            �            1259    34622 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    3            �            1259    34632    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    34630    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    3    198            	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    197            �            1259    34620    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    3    196            	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    195            �            1259    34640    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    34638 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    3    200             	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    199            �            1259    34735 	   cart_cart    TABLE     �   CREATE TABLE cart_cart (
    id integer NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    checked_out boolean NOT NULL
);
    DROP TABLE public.cart_cart;
       public         postgres    false    3            �            1259    34733    cart_cart_id_seq    SEQUENCE     r   CREATE SEQUENCE cart_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_cart_id_seq;
       public       postgres    false    3    204            !	           0    0    cart_cart_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE cart_cart_id_seq OWNED BY cart_cart.id;
            public       postgres    false    203            �            1259    34743 	   cart_item    TABLE     b  CREATE TABLE cart_item (
    id integer NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(18,2) NOT NULL,
    object_id integer NOT NULL,
    cart_id integer NOT NULL,
    content_type_id integer NOT NULL,
    CONSTRAINT cart_item_object_id_check CHECK ((object_id >= 0)),
    CONSTRAINT cart_item_quantity_check CHECK ((quantity >= 0))
);
    DROP TABLE public.cart_item;
       public         postgres    false    3            �            1259    34741    cart_item_id_seq    SEQUENCE     r   CREATE SEQUENCE cart_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cart_item_id_seq;
       public       postgres    false    206    3            "	           0    0    cart_item_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE cart_item_id_seq OWNED BY cart_item.id;
            public       postgres    false    205            �            1259    34700    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            �            1259    34698    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    202    3            #	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    201            �            1259    34586    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    34584    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    188    3            $	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    187            �            1259    34575    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    34573    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    186    3            %	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       postgres    false    185            �            1259    34801    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    34773    landing_page_newslettersub    TABLE     �   CREATE TABLE landing_page_newslettersub (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    date_added timestamp with time zone NOT NULL
);
 .   DROP TABLE public.landing_page_newslettersub;
       public         postgres    false    3            �            1259    34771 !   landing_page_newslettersub_id_seq    SEQUENCE     �   CREATE SEQUENCE landing_page_newslettersub_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.landing_page_newslettersub_id_seq;
       public       postgres    false    208    3            &	           0    0 !   landing_page_newslettersub_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE landing_page_newslettersub_id_seq OWNED BY landing_page_newslettersub.id;
            public       postgres    false    207            �            1259    34784    landing_page_sampleshirt    TABLE     �   CREATE TABLE landing_page_sampleshirt (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    descriptions character varying(255) NOT NULL,
    photo_url character varying(100)
);
 ,   DROP TABLE public.landing_page_sampleshirt;
       public         postgres    false    3            �            1259    34782    landing_page_sampleshirt_id_seq    SEQUENCE     �   CREATE SEQUENCE landing_page_sampleshirt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.landing_page_sampleshirt_id_seq;
       public       postgres    false    210    3            '	           0    0    landing_page_sampleshirt_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE landing_page_sampleshirt_id_seq OWNED BY landing_page_sampleshirt.id;
            public       postgres    false    209            �            1259    34813    shopping_page_shopshirts    TABLE     �  CREATE TABLE shopping_page_shopshirts (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    descriptions character varying(255) NOT NULL,
    photo_url character varying(100),
    price numeric(5,2) NOT NULL,
    available boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    quantity smallint NOT NULL,
    size character varying(10) NOT NULL,
    CONSTRAINT shopping_page_shopshirts_quantity_check CHECK ((quantity >= 0))
);
 ,   DROP TABLE public.shopping_page_shopshirts;
       public         postgres    false    3            �            1259    34811    shopping_page_shopshirts_id_seq    SEQUENCE     �   CREATE SEQUENCE shopping_page_shopshirts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.shopping_page_shopshirts_id_seq;
       public       postgres    false    213    3            (	           0    0    shopping_page_shopshirts_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE shopping_page_shopshirts_id_seq OWNED BY shopping_page_shopshirts.id;
            public       postgres    false    212            -           2604    34607    auth_group id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    192    191    192            .           2604    34617    auth_group_permissions id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    193    194            ,           2604    34599    auth_permission id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    189    190    190            /           2604    34625    auth_user id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    195    196    196            0           2604    34635    auth_user_groups id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    198    198            1           2604    34643    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    200    200            4           2604    34738    cart_cart id    DEFAULT     ^   ALTER TABLE ONLY cart_cart ALTER COLUMN id SET DEFAULT nextval('cart_cart_id_seq'::regclass);
 ;   ALTER TABLE public.cart_cart ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203    204            5           2604    34746    cart_item id    DEFAULT     ^   ALTER TABLE ONLY cart_item ALTER COLUMN id SET DEFAULT nextval('cart_item_id_seq'::regclass);
 ;   ALTER TABLE public.cart_item ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    206    206            2           2604    34703    django_admin_log id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    202    202            +           2604    34589    django_content_type id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187    188            *           2604    34578    django_migrations id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    186    186            8           2604    34776    landing_page_newslettersub id    DEFAULT     �   ALTER TABLE ONLY landing_page_newslettersub ALTER COLUMN id SET DEFAULT nextval('landing_page_newslettersub_id_seq'::regclass);
 L   ALTER TABLE public.landing_page_newslettersub ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    208    208            9           2604    34787    landing_page_sampleshirt id    DEFAULT     |   ALTER TABLE ONLY landing_page_sampleshirt ALTER COLUMN id SET DEFAULT nextval('landing_page_sampleshirt_id_seq'::regclass);
 J   ALTER TABLE public.landing_page_sampleshirt ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209    210            :           2604    34816    shopping_page_shopshirts id    DEFAULT     |   ALTER TABLE ONLY shopping_page_shopshirts ALTER COLUMN id SET DEFAULT nextval('shopping_page_shopshirts_id_seq'::regclass);
 J   ALTER TABLE public.shopping_page_shopshirts ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            �          0    34604 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    192   ��       )	           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    191             	          0    34614    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    194   �       *	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    193            �          0    34596    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    190   4�       +	           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 33, true);
            public       postgres    false    189            	          0    34622 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    196   ��       	          0    34632    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    198   w�       ,	           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    197            -	           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 1, true);
            public       postgres    false    195            	          0    34640    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    200   ��       .	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    199            
	          0    34735 	   cart_cart 
   TABLE DATA               <   COPY cart_cart (id, creation_date, checked_out) FROM stdin;
    public       postgres    false    204   ��       /	           0    0    cart_cart_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('cart_cart_id_seq', 1, false);
            public       postgres    false    203            	          0    34743 	   cart_item 
   TABLE DATA               [   COPY cart_item (id, quantity, unit_price, object_id, cart_id, content_type_id) FROM stdin;
    public       postgres    false    206   γ       0	           0    0    cart_item_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('cart_item_id_seq', 1, false);
            public       postgres    false    205            	          0    34700    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    202   �       1	           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);
            public       postgres    false    201            �          0    34586    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    188   �       2	           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 11, true);
            public       postgres    false    187            �          0    34575    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    186   ��       3	           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 20, true);
            public       postgres    false    185            	          0    34801    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    211   ]�       	          0    34773    landing_page_newslettersub 
   TABLE DATA               J   COPY landing_page_newslettersub (id, name, email, date_added) FROM stdin;
    public       postgres    false    208   ��       4	           0    0 !   landing_page_newslettersub_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('landing_page_newslettersub_id_seq', 1, false);
            public       postgres    false    207            	          0    34784    landing_page_sampleshirt 
   TABLE DATA               O   COPY landing_page_sampleshirt (id, title, descriptions, photo_url) FROM stdin;
    public       postgres    false    210   ��       5	           0    0    landing_page_sampleshirt_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('landing_page_sampleshirt_id_seq', 1, false);
            public       postgres    false    209            	          0    34813    shopping_page_shopshirts 
   TABLE DATA               }   COPY shopping_page_shopshirts (id, title, descriptions, photo_url, price, available, created_at, quantity, size) FROM stdin;
    public       postgres    false    213   ��       6	           0    0    shopping_page_shopshirts_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('shopping_page_shopshirts_id_seq', 1, true);
            public       postgres    false    212            I           2606    34611    auth_group auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    192    192            N           2606    34666 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    194    194    194            Q           2606    34619 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    194    194            K           2606    34609    auth_group auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    192    192            D           2606    34652 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    190    190    190            F           2606    34601 $   auth_permission auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    190    190            Y           2606    34637 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    198    198            \           2606    34681 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    198    198    198            S           2606    34627    auth_user auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    196    196            _           2606    34645 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    200    200            b           2606    34695 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    200    200    200            V           2606    34723     auth_user auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    196    196            h           2606    34740    cart_cart cart_cart_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY cart_cart
    ADD CONSTRAINT cart_cart_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cart_cart DROP CONSTRAINT cart_cart_pkey;
       public         postgres    false    204    204            l           2606    34750    cart_item cart_item_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY cart_item
    ADD CONSTRAINT cart_item_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT cart_item_pkey;
       public         postgres    false    206    206            e           2606    34709 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    202    202            ?           2606    34593 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    188    188    188            A           2606    34591 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    188    188            =           2606    34583 (   django_migrations django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    186    186            s           2606    34808 "   django_session django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    211    211            n           2606    34781 :   landing_page_newslettersub landing_page_newslettersub_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY landing_page_newslettersub
    ADD CONSTRAINT landing_page_newslettersub_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.landing_page_newslettersub DROP CONSTRAINT landing_page_newslettersub_pkey;
       public         postgres    false    208    208            p           2606    34792 6   landing_page_sampleshirt landing_page_sampleshirt_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY landing_page_sampleshirt
    ADD CONSTRAINT landing_page_sampleshirt_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.landing_page_sampleshirt DROP CONSTRAINT landing_page_sampleshirt_pkey;
       public         postgres    false    210    210            v           2606    34822 6   shopping_page_shopshirts shopping_page_shopshirts_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY shopping_page_shopshirts
    ADD CONSTRAINT shopping_page_shopshirts_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.shopping_page_shopshirts DROP CONSTRAINT shopping_page_shopshirts_pkey;
       public         postgres    false    213    213            G           1259    34654    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    192            L           1259    34667 (   auth_group_permissions_group_id_b120cbf9    INDEX     h   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    194            O           1259    34668 -   auth_group_permissions_permission_id_84c5c92e    INDEX     r   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    194            B           1259    34653 (   auth_permission_content_type_id_2f476e4b    INDEX     h   CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    190            W           1259    34683 "   auth_user_groups_group_id_97559544    INDEX     \   CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    198            Z           1259    34682 !   auth_user_groups_user_id_6a12ed8b    INDEX     Z   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    198            ]           1259    34697 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     z   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    200            `           1259    34696 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     n   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    200            T           1259    34724     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    196            i           1259    34761    cart_item_cart_id_157ecf5f    INDEX     L   CREATE INDEX cart_item_cart_id_157ecf5f ON cart_item USING btree (cart_id);
 .   DROP INDEX public.cart_item_cart_id_157ecf5f;
       public         postgres    false    206            j           1259    34762 "   cart_item_content_type_id_5737916f    INDEX     \   CREATE INDEX cart_item_content_type_id_5737916f ON cart_item USING btree (content_type_id);
 6   DROP INDEX public.cart_item_content_type_id_5737916f;
       public         postgres    false    206            c           1259    34720 )   django_admin_log_content_type_id_c4bce8eb    INDEX     j   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    202            f           1259    34721 !   django_admin_log_user_id_c564eba6    INDEX     Z   CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    202            q           1259    34810 #   django_session_expire_date_a5c62663    INDEX     ^   CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    211            t           1259    34809 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    211            y           2606    34660 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    194    2118    190            x           2606    34655 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    194    192    2123            w           2606    34646 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    190    2113    188            {           2606    34675 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    198    2123    192            z           2606    34670 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    196    198    2131            }           2606    34689 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    190    2118    200            |           2606    34684 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    2131    196    200            �           2606    34751 4   cart_item cart_item_cart_id_157ecf5f_fk_cart_cart_id    FK CONSTRAINT     �   ALTER TABLE ONLY cart_item
    ADD CONSTRAINT cart_item_cart_id_157ecf5f_fk_cart_cart_id FOREIGN KEY (cart_id) REFERENCES cart_cart(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT cart_item_cart_id_157ecf5f_fk_cart_cart_id;
       public       postgres    false    2152    204    206            �           2606    34756 F   cart_item cart_item_content_type_id_5737916f_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY cart_item
    ADD CONSTRAINT cart_item_content_type_id_5737916f_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.cart_item DROP CONSTRAINT cart_item_content_type_id_5737916f_fk_django_content_type_id;
       public       postgres    false    2113    188    206            ~           2606    34710 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    2113    202    188                       2606    34728 5   django_admin_log django_admin_log_user_id_c564eba6_fk    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk;
       public       postgres    false    202    196    2131            �      x������ � �       	      x������ � �      �   |  x�e�M�� F�p��`��z�Qi�iQ�M�@5��v����բ(�=.�x��u*����P¯��Rr���dJ� ���q��I���9[;���`��P/QLؖ��n�v�>��k��[���Q���"��@�2	^�좆�ǧT���]l M�#��P���uq~��{oF4 ��Q�����N�7T}�1�۔Ě0�B�J�����So�P��!��g��3{a_��k.���%u��3��8�yNgt������݉>LJP��b��p	�k6���P��I��P+��WBA��`h�A莥`tA�>_�������o`���=<��d�x�P����S��R߲b�T����`�S$�?�/)�?Z��      	   �   x�e��
�@@���S�p��\M
B�E$!2i^�2����'m۝��hx4y�ұR̕� `���ݴ0��d�d؅�V��k>89�edz^�Ƌ�ENܜg���� m��B�#�I�{6d�Xw�G��+�u����*�I���0����✻���c��n1u      	      x������ � �      	      x������ � �      
	      x������ � �      	      x������ � �      	      x������ � �      �   �   x�U��
1D��������[hӐ�����.��s�0�f����;��GҚ�rcܯK��+t#�#�}��$d��'0Z��)x���9�%&��r'���˿�X���Y�`c���c�0D�%0��S���TL
      �   �  x���]n� ���S�������M�08�����0�N�qd�X�p}������~ή �11>��m@}����&.�?c��g�O٥��+�֌��`Ȏ���&���I������`4�����?;�;�P"�O��vb���6jP�7�\K�Ɔ겙]�|)>�.7��0��+|�E�1&J�(vG-n�>�R����^)�'�=��4ײ�V���������&ιP��W��l���p{�e�!+Dݭ���G[S.���圲�\)��~)Lb�u�}��g'e!�U'1�bsݟ[�(x������W3��R�$�IŃ��F�鰄jeb��&�o'��8��ha_�YP0���	�!�ft�U����Z���$�Nݚ������ݢ�}�Ȁ�k����i2p���G�� ����m��|:�� h'c      	     x�=��n�0��5y�� (��%A�(�#r2X�d(؎M�J Oߨ��,��'zɃ�)/��n�EI�Z�zɛ�7��.�q1����	�lWӾv���4��bob���C=Ө�nY��&ǝH�C�l�Z�'W�JaI*&U��4������\7J��,l�XY|��+O�O��n>���|Q,`k��Pfp7�ݨ�<<��e@J�_)HY±�M����i�����C�ɚ��t%�.��En�-�`@-j~r?���L=o�MF >��������8�ag�      	      x������ � �      	      x������ � �      	   d   x�3�,N�-�IU(��,*���,�0����"����̼t����JNNCS=�N#C]3]C#+cK+cc=3K3��	P��75%�4�+F��� 
�"     
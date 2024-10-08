PGDMP  &    &    	            |         	   vueloudea    16.4    16.4 0    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24576 	   vueloudea    DATABASE        CREATE DATABASE vueloudea WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE vueloudea;
                postgres    false            �            1259    24599    airplane    TABLE     �   CREATE TABLE public.airplane (
    id bigint NOT NULL,
    airplane_type_id bigint NOT NULL,
    max_seats integer NOT NULL,
    seats_distribution character varying(10) NOT NULL
);
    DROP TABLE public.airplane;
       public         heap    postgres    false            �            1259    24598    airplane_id_seq    SEQUENCE     �   CREATE SEQUENCE public.airplane_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.airplane_id_seq;
       public          postgres    false    222            �           0    0    airplane_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.airplane_id_seq OWNED BY public.airplane.id;
          public          postgres    false    221            �            1259    24592    airplane_type    TABLE     h   CREATE TABLE public.airplane_type (
    id bigint NOT NULL,
    name character varying(100) NOT NULL
);
 !   DROP TABLE public.airplane_type;
       public         heap    postgres    false            �            1259    24591    airplane_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.airplane_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.airplane_type_id_seq;
       public          postgres    false    220            �           0    0    airplane_type_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.airplane_type_id_seq OWNED BY public.airplane_type.id;
          public          postgres    false    219            �            1259    24610    city    TABLE     �   CREATE TABLE public.city (
    iata_code character varying(255) NOT NULL,
    airport_name character varying(150) NOT NULL,
    country character varying(100) NOT NULL
);
    DROP TABLE public.city;
       public         heap    postgres    false            �            1259    24616    flight    TABLE     c  CREATE TABLE public.flight (
    id bigint NOT NULL,
    arrival_date date NOT NULL,
    arrival_time time without time zone NOT NULL,
    departure_date date NOT NULL,
    departure_time time without time zone NOT NULL,
    price double precision NOT NULL,
    surcharge_percentage double precision NOT NULL,
    tax_percentage double precision NOT NULL,
    airplane_id bigint NOT NULL,
    destination_iata character varying(255) NOT NULL,
    flight_number character varying(10) NOT NULL,
    flight_type_id bigint NOT NULL,
    origin_iata character varying(255) NOT NULL,
    status_id bigint NOT NULL
);
    DROP TABLE public.flight;
       public         heap    postgres    false            �            1259    24615    flight_id_seq    SEQUENCE     �   CREATE SEQUENCE public.flight_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.flight_id_seq;
       public          postgres    false    225            �           0    0    flight_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.flight_id_seq OWNED BY public.flight.id;
          public          postgres    false    224            �            1259    24578    flight_type    TABLE     e   CREATE TABLE public.flight_type (
    id bigint NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.flight_type;
       public         heap    postgres    false            �            1259    24577    flight_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.flight_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.flight_type_id_seq;
       public          postgres    false    216            �           0    0    flight_type_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.flight_type_id_seq OWNED BY public.flight_type.id;
          public          postgres    false    215            �            1259    24585    status    TABLE     g   CREATE TABLE public.status (
    id bigint NOT NULL,
    status_name character varying(50) NOT NULL
);
    DROP TABLE public.status;
       public         heap    postgres    false            �            1259    24584    status_id_seq    SEQUENCE     �   CREATE SEQUENCE public.status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.status_id_seq;
       public          postgres    false    218            �           0    0    status_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.status_id_seq OWNED BY public.status.id;
          public          postgres    false    217            5           2604    24648    airplane id    DEFAULT     j   ALTER TABLE ONLY public.airplane ALTER COLUMN id SET DEFAULT nextval('public.airplane_id_seq'::regclass);
 :   ALTER TABLE public.airplane ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            4           2604    24669    airplane_type id    DEFAULT     t   ALTER TABLE ONLY public.airplane_type ALTER COLUMN id SET DEFAULT nextval('public.airplane_type_id_seq'::regclass);
 ?   ALTER TABLE public.airplane_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            6           2604    24701 	   flight id    DEFAULT     f   ALTER TABLE ONLY public.flight ALTER COLUMN id SET DEFAULT nextval('public.flight_id_seq'::regclass);
 8   ALTER TABLE public.flight ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            2           2604    24771    flight_type id    DEFAULT     p   ALTER TABLE ONLY public.flight_type ALTER COLUMN id SET DEFAULT nextval('public.flight_type_id_seq'::regclass);
 =   ALTER TABLE public.flight_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            3           2604    24783 	   status id    DEFAULT     f   ALTER TABLE ONLY public.status ALTER COLUMN id SET DEFAULT nextval('public.status_id_seq'::regclass);
 8   ALTER TABLE public.status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �          0    24599    airplane 
   TABLE DATA           W   COPY public.airplane (id, airplane_type_id, max_seats, seats_distribution) FROM stdin;
    public          postgres    false    222   
6       �          0    24592    airplane_type 
   TABLE DATA           1   COPY public.airplane_type (id, name) FROM stdin;
    public          postgres    false    220   m6       �          0    24610    city 
   TABLE DATA           @   COPY public.city (iata_code, airport_name, country) FROM stdin;
    public          postgres    false    223   �6       �          0    24616    flight 
   TABLE DATA           �   COPY public.flight (id, arrival_date, arrival_time, departure_date, departure_time, price, surcharge_percentage, tax_percentage, airplane_id, destination_iata, flight_number, flight_type_id, origin_iata, status_id) FROM stdin;
    public          postgres    false    225   �8       �          0    24578    flight_type 
   TABLE DATA           /   COPY public.flight_type (id, name) FROM stdin;
    public          postgres    false    216   !:       �          0    24585    status 
   TABLE DATA           1   COPY public.status (id, status_name) FROM stdin;
    public          postgres    false    218   R:       �           0    0    airplane_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.airplane_id_seq', 15, true);
          public          postgres    false    221            �           0    0    airplane_type_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.airplane_type_id_seq', 1, false);
          public          postgres    false    219            �           0    0    flight_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.flight_id_seq', 17, true);
          public          postgres    false    224            �           0    0    flight_type_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.flight_type_id_seq', 1, false);
          public          postgres    false    215            �           0    0    status_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.status_id_seq', 1, false);
          public          postgres    false    217            >           2606    24650    airplane airplane_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.airplane
    ADD CONSTRAINT airplane_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.airplane DROP CONSTRAINT airplane_pkey;
       public            postgres    false    222            <           2606    24671     airplane_type airplane_type_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.airplane_type
    ADD CONSTRAINT airplane_type_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.airplane_type DROP CONSTRAINT airplane_type_pkey;
       public            postgres    false    220            @           2606    24682    city city_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (iata_code);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    223            B           2606    24703    flight flight_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT flight_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.flight DROP CONSTRAINT flight_pkey;
       public            postgres    false    225            8           2606    24773    flight_type flight_type_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.flight_type
    ADD CONSTRAINT flight_type_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.flight_type DROP CONSTRAINT flight_type_pkey;
       public            postgres    false    216            :           2606    24785    status status_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public            postgres    false    218            D           2606    24720    flight fk_airplane    FK CONSTRAINT     x   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT fk_airplane FOREIGN KEY (airplane_id) REFERENCES public.airplane(id);
 <   ALTER TABLE ONLY public.flight DROP CONSTRAINT fk_airplane;
       public          postgres    false    222    4670    225            C           2606    24672    airplane fk_airplane_type    FK CONSTRAINT     �   ALTER TABLE ONLY public.airplane
    ADD CONSTRAINT fk_airplane_type FOREIGN KEY (airplane_type_id) REFERENCES public.airplane_type(id);
 C   ALTER TABLE ONLY public.airplane DROP CONSTRAINT fk_airplane_type;
       public          postgres    false    4668    222    220            E           2606    24729    flight fk_destination    FK CONSTRAINT     �   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT fk_destination FOREIGN KEY (destination_iata) REFERENCES public.city(iata_code);
 ?   ALTER TABLE ONLY public.flight DROP CONSTRAINT fk_destination;
       public          postgres    false    223    225    4672            F           2606    24774    flight fk_flight_type    FK CONSTRAINT     �   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT fk_flight_type FOREIGN KEY (flight_type_id) REFERENCES public.flight_type(id);
 ?   ALTER TABLE ONLY public.flight DROP CONSTRAINT fk_flight_type;
       public          postgres    false    216    4664    225            G           2606    24747    flight fk_origin    FK CONSTRAINT     y   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT fk_origin FOREIGN KEY (origin_iata) REFERENCES public.city(iata_code);
 :   ALTER TABLE ONLY public.flight DROP CONSTRAINT fk_origin;
       public          postgres    false    223    225    4672            H           2606    24786    flight fk_status    FK CONSTRAINT     r   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT fk_status FOREIGN KEY (status_id) REFERENCES public.status(id);
 :   ALTER TABLE ONLY public.flight DROP CONSTRAINT fk_status;
       public          postgres    false    225    218    4666            �   S   x�-���0ߢg��ؽ��:"p~��`������6U�pI��Ir#�x<{@�8�Y$�6����9���������      �   3   x�3�t�O��KW076�2�t�,J*-Vp462�2�K��s� �,�b���� �$�      �   3  x�}T�R�0���P��l��� �c2i���NA���"�.�ByCG�ˊ�dƮ���������$�"���:�)���h��҈	{"�5v�!�h�]jH��FNх����#���[`�9VkB�R�2&<���r1"f��������Ku�V�	���0��wܢ��p�T[mL�T��m(l]��ͥl��28�VYݓ �O����D����<#X�g�j��ə&��j�����^����z���r���D�sś썏��iN��0M�ZAx�N)M=d]͇��n����[�]��Q雘���Ɗ�/�HY��;�y��u�t��\r�N�Y�Kz|�AL�ġ�nC��a�ȵ+�̕��C���0�rd����ƨ�8��K�9�U�{Q�Gڮ�%R#�Vw��0<6V�% qϐΊa{Q#����4&S�����<E~4�v��l�����	��_&�d�_&�Ү#�f�p�)yۤ2���Tr},n/}�w��z�ȍ��J����N}x�ݕ־�&�Va�K�0����z1*#��.�a��m��t��J�I��'�|      �     x���Kn�0D��]����2v�~�H���?GIK6��(�!�d�w6wh퓕_�ٴh�������E���@Cw��� U��!>OR�#P4���?8��X9��U��㵇E|� �~�B�xx?�H��C�8i�A?kd�gH���M�`��&ji���q21)���MR��Ո��9N���e� �%8?�&�-��F����]�iw��0N��[`%�����jJv2O�&]�e�����u��&���¤���4kf9�eD��������H��{g��|K��      �   !   x�3��KL���K��2���+I-ʃ�c���� ��	�      �   -   x�3�N�HM)�IM�2�t��-�I-��9��Ss@�1z\\\ �!     
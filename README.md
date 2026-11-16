# HECOM — sitio web

Sitio de HECOM (dirección de proyectos de construcción).

- `src/hecom.html`: fuente del sitio (estilos, contenido y animación).
- `index.html`: documento completo generado con `./build.sh`; es el que se publica (por ejemplo en GitHub Pages).

Después de editar `src/hecom.html`, ejecuta `./build.sh` para regenerar `index.html`.

## Videos, fotos y WhatsApp

Al inicio del `<script>` de `src/hecom.html` está el bloque `CONFIG`:

- `whatsapp`: número con lada de país, solo dígitos.
- `media.cover` y `media.s1` … `media.s7`: ruta a un video MP4 ligero (4–9 s en bucle, sin audio, 1280×720, menos de 5 MB) para la portada y para el paso oscuro de cada una de las siete secciones. Vacío = animación de obra.
- `projects`: foto de cada proyecto, por ejemplo `autozone: { img: 'media/autozone.jpg' }`.

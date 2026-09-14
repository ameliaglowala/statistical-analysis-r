# Comprehensive Statistical Analysis in R

Projekt analityczny realizujący pełną ścieżkę analizy statystycznej i weryfikacji hipotez badawczych z wykorzystaniem języka R oraz środowiska R Markdown.

## Zakres merytoryczny
- **Statystyki opisowe:** miary położenia, zmienności, asymetrii i koncentracji (własne implementacje funkcji).
- **Analiza szeregów rozdzielczych:** przetwarzanie i agregacja surowych danych empirycznych.
- **Wnioskowanie statystyczne:** estymacja przedziałowa (przedziały ufności dla średniej i wariancji) oraz parametryczne testowanie hipotez (obszary krytyczne, p-value).

## Struktura projektu
- `/functions/` – biblioteka autorskich funkcji w R obliczających m.in. skośność, kurtozę, błędy estymacji i wartości krytyczne.
- `/data/` – zbiory danych wejściowych (`HeightWeight.csv`).
- `raport_statystyka.Rmd` – skrypt źródłowy raportu w R Markdown.
- `raport_statystyka.html` – wygenerowany raport z interpretacją wyników i wizualizacjami.

## Wykorzystane technologie
- R, R Markdown, knitr

FROM ollama/ollama:0.5.7

ENTRYPOINT ["/bin/ollama"]
CMD ["serve"]

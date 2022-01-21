FROM python:3.8
COPY program.py /program.py
CMD ["python","./program.py"]

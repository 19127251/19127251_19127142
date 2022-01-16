FROM python:3.8
COPY TEST.py /TEST.py
CMD ["python","./TEST.py"]

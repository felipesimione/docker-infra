import streamlit as st

def hello_word():
    return "Hello, World!"
def main():
    st.write(hello_word())

if __name__ == "__main__":
    main()
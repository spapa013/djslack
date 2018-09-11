from setuptools import setup

setup(
    name='docker-practice',
    version='0.0.1',
    description='Practice using Docker',
    author='Stelios Papadopoulos',
    author_email='spapadop@bcm.edu',
    license='MIT',
    url='https://github.com/spapa013/docker-practice',
    keywords= 'docker python3 python practice',
    packages=['docker-practice'],
    install_requires=['numpy', 'scipy', 'seaborn', 'pandas', 'jupyter lab', 'matplotlib'],
    classifiers=[
        'Development Status :: 1 - Alpha',
        'Intended Audience :: Science/Research',
        'Programming Language :: Python :: 3 :: Only',
        'License :: OSI Approved :: MIT License',
        'Natural Language :: English'
        'Topic :: Scientific/Engineering :: Bio-Informatics',
    ],
)

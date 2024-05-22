def readTiff(filePath):
    """
    读取tif文件
    :param filePath: tif文件路径
    :return: data, width, height, geotransform
    """
    dataset:gdal.Dataset = gdal.Open(filePath)
    # 获取影像数据和信息
    width = dataset.RasterXSize
    height = dataset.RasterYSize
    geotransform = dataset.GetGeoTransform()
    band:gdal.Band = dataset.GetRasterBand(1)
    data = band.ReadAsArray(0, 0, width, height)
    # 数据预处理
    data[data == band.GetNoDataValue()] = 0

    return data, width, height, geotransform
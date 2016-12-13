.class Landroid/media/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static alignRange(Landroid/util/Range;I)Landroid/util/Range;
    .locals 2
    .param p1, "align"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public static binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([",
            "Landroid/util/Range",
            "<TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TT;"
    invoke-static {p1, p1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    new-instance v1, Landroid/media/Utils$2;

    invoke-direct {v1}, Landroid/media/Utils$2;-><init>()V

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method static divUp(II)I
    .locals 1
    .param p0, "num"    # I
    .param p1, "den"    # I

    .prologue
    .line 188
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method private static divUp(JJ)J
    .locals 4
    .param p0, "num"    # J
    .param p2, "den"    # J

    .prologue
    .line 192
    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method static factorRange(Landroid/util/Range;I)Landroid/util/Range;
    .locals 2
    .param p1, "factor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 149
    .end local p0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_0
    return-object p0

    .restart local p0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    goto :goto_0
.end method

.method static factorRange(Landroid/util/Range;J)Landroid/util/Range;
    .locals 5
    .param p1, "factor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 160
    .end local p0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :goto_0
    return-object p0

    .restart local p0    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    goto :goto_0
.end method

.method static gcd(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 124
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 125
    const/4 v1, 0x1

    .line 138
    :goto_0
    return v1

    .line 127
    :cond_0
    if-gez p1, :cond_1

    .line 128
    neg-int p1, p1

    .line 130
    :cond_1
    if-gez p0, :cond_2

    .line 131
    neg-int p0, p0

    .line 133
    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    .line 134
    rem-int v0, p1, p0

    .line 135
    .local v0, "c":I
    move p1, p0

    .line 136
    move p0, v0

    .line 137
    goto :goto_1

    .end local v0    # "c":I
    :cond_3
    move v1, p1

    .line 138
    goto :goto_0
.end method

.method static getMaxFileSize(Ljava/lang/String;)J
    .locals 28
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 326
    new-instance v9, Landroid/os/StatFs;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 327
    .local v9, "fs":Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    .line 329
    .local v6, "availableBytes":J
    const-string/jumbo v26, "mount"

    invoke-static/range {v26 .. v26}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v13

    .line 331
    .local v13, "mountService":Landroid/os/storage/IMountService;
    if-nez v13, :cond_0

    .line 332
    new-instance v26, Ljava/lang/IllegalStateException;

    const-string v27, "can\'t get mount service"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 335
    :cond_0
    const/16 v25, 0x0

    .line 337
    .local v25, "volumes":[Landroid/os/storage/StorageVolume;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v18

    .line 338
    .local v18, "packageName":Ljava/lang/String;
    if-nez v18, :cond_2

    .line 339
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v26

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v27

    invoke-interface/range {v26 .. v27}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v19

    .line 341
    .local v19, "packageNames":[Ljava/lang/String;
    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    if-gtz v26, :cond_7

    .line 342
    :cond_1
    const/16 v25, 0x0

    .line 348
    .end local v19    # "packageNames":[Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v18, :cond_3

    .line 349
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v21

    .line 350
    .local v21, "userId":I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 352
    .local v20, "uid":I
    if-gtz v20, :cond_8

    .line 353
    const/16 v25, 0x0

    .line 362
    .end local v20    # "uid":I
    .end local v21    # "userId":I
    :cond_3
    :goto_1
    const-wide/16 v14, 0x0

    .line 363
    .local v14, "maxFileSize":J
    if-eqz v25, :cond_b

    .line 364
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v8, "f":Ljava/io/File;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 371
    :goto_2
    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-nez v26, :cond_5

    .line 372
    const/16 v23, 0x0

    .line 373
    .local v23, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v4, v25

    .local v4, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_3
    if-ge v10, v12, :cond_4

    aget-object v22, v4, v10

    .line 374
    .local v22, "vol":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v22 .. v22}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v24

    .line 376
    .local v24, "volumeFile":Ljava/io/File;
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v24

    .line 380
    move-object/from16 v0, v24

    invoke-static {v0, v8}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 381
    move-object/from16 v23, v22

    .line 386
    .end local v22    # "vol":Landroid/os/storage/StorageVolume;
    .end local v24    # "volumeFile":Ljava/io/File;
    :cond_4
    if-eqz v23, :cond_a

    .line 387
    invoke-virtual/range {v23 .. v23}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v14

    .line 396
    .end local v4    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v23    # "volume":Landroid/os/storage/StorageVolume;
    :cond_5
    :goto_4
    move-wide/from16 v16, v6

    .line 397
    .local v16, "maxSize":J
    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-lez v26, :cond_6

    .line 398
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 400
    :cond_6
    return-wide v16

    .line 344
    .end local v14    # "maxFileSize":J
    .end local v16    # "maxSize":J
    .restart local v19    # "packageNames":[Ljava/lang/String;
    :cond_7
    const/16 v26, 0x0

    :try_start_3
    aget-object v18, v19, v26

    goto :goto_0

    .line 355
    .end local v19    # "packageNames":[Ljava/lang/String;
    .restart local v20    # "uid":I
    .restart local v21    # "userId":I
    :cond_8
    const/16 v26, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-interface {v13, v0, v1, v2}, Landroid/os/storage/IMountService;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v25

    goto :goto_1

    .line 358
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v20    # "uid":I
    .end local v21    # "userId":I
    :catch_0
    move-exception v5

    .line 359
    .local v5, "e":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v26

    throw v26

    .line 367
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v8    # "f":Ljava/io/File;
    .restart local v14    # "maxFileSize":J
    .restart local v18    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 368
    .local v11, "ignored":Ljava/io/IOException;
    const-wide v14, 0xffffffffL

    goto :goto_2

    .line 377
    .end local v11    # "ignored":Ljava/io/IOException;
    .restart local v4    # "arr$":[Landroid/os/storage/StorageVolume;
    .restart local v10    # "i$":I
    .restart local v12    # "len$":I
    .restart local v22    # "vol":Landroid/os/storage/StorageVolume;
    .restart local v23    # "volume":Landroid/os/storage/StorageVolume;
    .restart local v24    # "volumeFile":Ljava/io/File;
    :catch_2
    move-exception v11

    .line 373
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 389
    .end local v22    # "vol":Landroid/os/storage/StorageVolume;
    .end local v24    # "volumeFile":Ljava/io/File;
    :cond_a
    const-wide v14, 0xffffffffL

    goto :goto_4

    .line 393
    .end local v4    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v8    # "f":Ljava/io/File;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v23    # "volume":Landroid/os/storage/StorageVolume;
    :cond_b
    const-wide v14, 0xffffffffL

    goto :goto_4
.end method

.method static intRangeFor(D)Landroid/util/Range;
    .locals 4
    .param p0, "v"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    double-to-int v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public static intersectSortedDistinctRanges([Landroid/util/Range;[Landroid/util/Range;)[Landroid/util/Range;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([",
            "Landroid/util/Range",
            "<TT;>;[",
            "Landroid/util/Range",
            "<TT;>;)[",
            "Landroid/util/Range",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "one":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    .local p1, "another":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    const/4 v2, 0x0

    .line 75
    .local v2, "ix":I
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 76
    .local v5, "result":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/util/Range<TT;>;>;"
    move-object v0, p1

    .local v0, "arr$":[Landroid/util/Range;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 77
    .local v4, "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :goto_1
    array-length v6, p0

    if-ge v2, v6, :cond_0

    aget-object v6, p0, v2

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_0

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    :cond_0
    :goto_2
    array-length v6, p0

    if-ge v2, v6, :cond_1

    aget-object v6, p0, v2

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_1

    .line 83
    aget-object v6, p0, v2

    invoke-virtual {v4, v6}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 86
    :cond_1
    array-length v6, p0

    if-ne v2, v6, :cond_3

    .line 93
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :cond_2
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v6, v6, [Landroid/util/Range;

    invoke-virtual {v5, v6}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/util/Range;

    return-object v6

    .line 89
    .restart local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<TT;>;"
    :cond_3
    aget-object v6, p0, v2

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gtz v6, :cond_4

    .line 90
    aget-object v6, p0, v2

    invoke-virtual {v4, v6}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static lcm(II)J
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 199
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lce is not defined for zero arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-static {p0, p1}, Landroid/media/Utils;->gcd(II)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method static longRangeFor(D)Landroid/util/Range;
    .locals 4
    .param p0, "v"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    double-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method static parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .locals 8
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 244
    .local v3, "s":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 245
    .local v2, "ix":I
    if-ltz v2, :cond_0

    .line 246
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    .line 259
    .end local v2    # "ix":I
    .end local v3    # "s":Ljava/lang/String;
    .end local p1    # "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_0
    return-object p1

    .line 250
    .restart local v2    # "ix":I
    .restart local v3    # "s":Ljava/lang/String;
    .restart local p1    # "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 251
    .local v4, "value":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    goto :goto_0

    .line 254
    .end local v2    # "ix":I
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "value":I
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 256
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    .line 258
    :goto_1
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not parse integer range \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :catch_2
    move-exception v5

    goto :goto_1

    .line 252
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method static parseIntSafely(Ljava/lang/Object;I)I
    .locals 6
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "fallback"    # I

    .prologue
    .line 226
    if-nez p0, :cond_0

    .line 238
    .end local p1    # "fallback":I
    :goto_0
    return p1

    .line 230
    .restart local p1    # "fallback":I
    :cond_0
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 231
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 234
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 233
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 237
    :goto_1
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not parse integer \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method static parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .locals 10
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 265
    .local v4, "s":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 266
    .local v3, "ix":I
    if-ltz v3, :cond_0

    .line 267
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xa

    invoke-static {v5, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    .line 280
    .end local v3    # "ix":I
    .end local v4    # "s":Ljava/lang/String;
    .end local p1    # "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :goto_0
    return-object p1

    .line 271
    .restart local v3    # "ix":I
    .restart local v4    # "s":Ljava/lang/String;
    .restart local p1    # "fallback":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    :cond_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 272
    .local v6, "value":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    goto :goto_0

    .line 275
    .end local v3    # "ix":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "value":J
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 277
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    .line 279
    :goto_1
    const-string v5, "Utils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "could not parse long range \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :catch_2
    move-exception v5

    goto :goto_1

    .line 273
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method static parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;
    .locals 8
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;)",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "fallback":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 286
    .local v3, "s":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 287
    .local v2, "ix":I
    if-ltz v2, :cond_0

    .line 288
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    .line 301
    .end local v2    # "ix":I
    .end local v3    # "s":Ljava/lang/String;
    .end local p1    # "fallback":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :goto_0
    return-object p1

    .line 292
    .restart local v2    # "ix":I
    .restart local v3    # "s":Ljava/lang/String;
    .restart local p1    # "fallback":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :cond_0
    invoke-static {v3}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v4

    .line 293
    .local v4, "value":Landroid/util/Rational;
    invoke-static {v4, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    goto :goto_0

    .line 296
    .end local v2    # "ix":I
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "value":Landroid/util/Rational;
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 298
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    .line 300
    :goto_1
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not parse rational range \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :catch_2
    move-exception v5

    goto :goto_1

    .line 294
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method static parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "fallback"    # Landroid/util/Size;

    .prologue
    .line 215
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 222
    .end local p1    # "fallback":Landroid/util/Size;
    :goto_0
    return-object p1

    .line 218
    .restart local p1    # "fallback":Landroid/util/Size;
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 217
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 221
    :goto_1
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse size \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method static parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 9
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 306
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 307
    .local v3, "s":Ljava/lang/String;
    const/16 v6, 0x2d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 308
    .local v2, "ix":I
    if-ltz v2, :cond_0

    .line 309
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 322
    .end local v2    # "ix":I
    .end local v3    # "s":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 313
    .restart local v2    # "ix":I
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v4

    .line 314
    .local v4, "value":Landroid/util/Size;
    invoke-static {v4, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 317
    .end local v2    # "ix":I
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "value":Landroid/util/Size;
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0

    .line 319
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v6

    .line 321
    :goto_1
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not parse size range \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    :catch_2
    move-exception v6

    goto :goto_1

    .line 315
    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method static scaleRange(Landroid/util/Range;II)Landroid/util/Range;
    .locals 2
    .param p1, "num"    # I
    .param p2, "den"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;II)",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "range":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    if-ne p1, p2, :cond_0

    .line 176
    .end local p0    # "range":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :goto_0
    return-object p0

    .restart local p0    # "range":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    invoke-static {v0, p1, p2}, Landroid/media/Utils;->scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    invoke-static {v0, p1, p2}, Landroid/media/Utils;->scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p0

    goto :goto_0
.end method

.method private static scaleRatio(Landroid/util/Rational;II)Landroid/util/Rational;
    .locals 8
    .param p0, "ratio"    # Landroid/util/Rational;
    .param p1, "num"    # I
    .param p2, "den"    # I

    .prologue
    .line 164
    invoke-static {p1, p2}, Landroid/media/Utils;->gcd(II)I

    move-result v0

    .line 165
    .local v0, "common":I
    div-int/2addr p1, v0

    .line 166
    div-int/2addr p2, v0

    .line 167
    new-instance v1, Landroid/util/Rational;

    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    int-to-double v4, v3

    int-to-double v6, p2

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    return-object v1
.end method

.method public static sortDistinctRanges([Landroid/util/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([",
            "Landroid/util/Range",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "ranges":[Landroid/util/Range;, "[Landroid/util/Range<TT;>;"
    new-instance v0, Landroid/media/Utils$1;

    invoke-direct {v0}, Landroid/media/Utils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 64
    return-void
.end method

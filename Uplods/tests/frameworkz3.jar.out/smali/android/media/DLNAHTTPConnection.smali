.class public Landroid/media/DLNAHTTPConnection;
.super Landroid/media/IMediaHTTPConnection$Stub;
.source "DLNAHTTPConnection.java"


# static fields
.field private static final DEFAULT_TIME_SEEK_INCREMENT:J = 0x7a120L

.field private static final HTTP_TEMP_REDIRECT:I = 0x133

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DLNAHTTPConnection"

.field private static final TRY_AGAIN:I = -0x1

.field private static final VERBOSE:Z


# instance fields
.field private mAllowCrossDomainRedirect:Z

.field private mAllowCrossProtocolRedirect:Z

.field private mConnection:Ljava/net/HttpURLConnection;

.field private mCurrentOffset:J

.field private mDeclaredDuration:J

.field private mDeclaredSize:J

.field private mDuration:J

.field private mEndOffset:J

.field private mHadToDecreaseTime:Z

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputStream:Ljava/io/InputStream;

.field private mNativeContext:J

.field private mOriginalURI:Ljava/lang/String;

.field private mSkipRead:J

.field private mSupportByteSeek:Z

.field private mSupportTimeSeek:Z

.field private mTime:J

.field private mTimeSeekIncrement:J

.field private mTotalSize:J

.field private mURL:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 747
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 748
    invoke-static {}, Landroid/media/DLNAHTTPConnection;->native_init()V

    .line 749
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    .line 77
    invoke-direct {p0}, Landroid/media/IMediaHTTPConnection$Stub;-><init>()V

    .line 50
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    .line 51
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mEndOffset:J

    .line 52
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 53
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mDuration:J

    .line 54
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredDuration:J

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    .line 56
    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mTimeSeekIncrement:J

    .line 57
    iput-boolean v6, p0, Landroid/media/DLNAHTTPConnection;->mHadToDecreaseTime:Z

    .line 58
    iput-object v4, p0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Landroid/media/DLNAHTTPConnection;->mOriginalURI:Ljava/lang/String;

    .line 60
    iput-object v4, p0, Landroid/media/DLNAHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 61
    iput-object v4, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 62
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mTotalSize:J

    .line 63
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredSize:J

    .line 64
    iput-object v4, p0, Landroid/media/DLNAHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 65
    iput-boolean v5, p0, Landroid/media/DLNAHTTPConnection;->mSupportByteSeek:Z

    .line 66
    iput-boolean v6, p0, Landroid/media/DLNAHTTPConnection;->mSupportTimeSeek:Z

    .line 68
    iput-boolean v5, p0, Landroid/media/DLNAHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 69
    iput-boolean v5, p0, Landroid/media/DLNAHTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 78
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 82
    :cond_0
    invoke-direct {p0}, Landroid/media/DLNAHTTPConnection;->native_setup()V

    .line 83
    return-void
.end method

.method private convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "headers"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "\r\n"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "pairs":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v6, v0, v2

    .line 191
    .local v6, "pair":Ljava/lang/String;
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 192
    .local v1, "colonPos":I
    if-ltz v1, :cond_0

    .line 193
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, "val":Ljava/lang/String;
    invoke-direct {p0, v3, v8}, Landroid/media/DLNAHTTPConnection;->filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 197
    invoke-virtual {v5, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v3    # "key":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "colonPos":I
    .end local v6    # "pair":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method private filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v0, "android-allow-cross-domain-redirect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0, p2}, Landroid/media/DLNAHTTPConnection;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/DLNAHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 179
    iget-boolean v0, p0, Landroid/media/DLNAHTTPConnection;->mAllowCrossDomainRedirect:Z

    iput-boolean v0, p0, Landroid/media/DLNAHTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 183
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fromNptString(Ljava/lang/String;)F
    .locals 6
    .param p0, "npt"    # Ljava/lang/String;

    .prologue
    .line 605
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 606
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "timeArray":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 608
    .local v0, "hours":F
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 609
    .local v1, "minutes":F
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 611
    .local v2, "seconds":F
    const/high16 v4, 0x45610000    # 3600.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x42700000    # 60.0f

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    .line 613
    .end local v0    # "hours":F
    .end local v1    # "minutes":F
    .end local v2    # "seconds":F
    .end local v3    # "timeArray":[Ljava/lang/String;
    :goto_0
    return v4

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_0
.end method

.method private handleTimeSeekResponse(JJ)I
    .locals 21
    .param p1, "time"    # J
    .param p3, "seekOffset"    # J

    .prologue
    .line 656
    const-string v13, "TimeSeekRange.DLNA.org"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/media/DLNAHTTPConnection;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 658
    .local v12, "timeSeekResponse":Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 659
    :cond_0
    const-string v13, "DLNAHTTPConnection"

    const-string v14, "did not receive TimeSeekRange in response"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    .line 661
    const/4 v13, 0x0

    .line 731
    :goto_0
    return v13

    .line 665
    :cond_1
    const/4 v13, 0x4

    new-array v7, v13, [J

    .line 667
    .local v7, "output":[J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v7}, Landroid/media/DLNAHTTPConnection;->extractNptResponseData(Ljava/lang/String;[J)V

    .line 668
    const/4 v13, 0x0

    aget-wide v8, v7, v13

    .line 669
    .local v8, "returnOffset":J
    const/4 v13, 0x1

    aget-wide v14, v7, v13

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mEndOffset:J

    .line 670
    const/4 v13, 0x2

    aget-wide v10, v7, v13

    .line 671
    .local v10, "returnTime":J
    const/4 v13, 0x3

    aget-wide v14, v7, v13

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mDuration:J

    .line 673
    const-wide/16 v14, 0x0

    cmp-long v13, p3, v14

    if-ltz v13, :cond_3

    const/4 v6, 0x1

    .line 674
    .local v6, "offsetIsKnown":Z
    :goto_1
    const-wide/16 v14, -0x1

    cmp-long v13, p1, v14

    if-nez v13, :cond_5

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mEndOffset:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_5

    .line 679
    invoke-virtual/range {p0 .. p0}, Landroid/media/DLNAHTTPConnection;->getDurationUs()J

    move-result-wide v4

    .line 680
    .local v4, "durationUs":J
    mul-long v14, p3, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/DLNAHTTPConnection;->mEndOffset:J

    move-wide/from16 v16, v0

    div-long v14, v14, v16

    long-to-double v2, v14

    .line 681
    .local v2, "approximatedTime":D
    double-to-long v14, v2

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 682
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v16, v4, v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    cmp-long v13, v14, v16

    if-ltz v13, :cond_2

    .line 685
    const-wide/32 v14, 0x7a120

    sub-long v14, v4, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 686
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_4

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    :goto_2
    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 689
    :cond_2
    const-string v13, "DLNAHTTPConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "We had to approximate time to: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 673
    .end local v2    # "approximatedTime":D
    .end local v4    # "durationUs":J
    .end local v6    # "offsetIsKnown":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 686
    .restart local v2    # "approximatedTime":D
    .restart local v4    # "durationUs":J
    .restart local v6    # "offsetIsKnown":Z
    :cond_4
    const-wide/16 v14, 0x0

    goto :goto_2

    .line 694
    .end local v2    # "approximatedTime":D
    .end local v4    # "durationUs":J
    :cond_5
    cmp-long v13, v8, p3

    if-lez v13, :cond_8

    if-eqz v6, :cond_8

    .line 695
    const-string v13, "DLNAHTTPConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "server returns offset: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " but "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " needed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-wide/16 v14, 0x0

    cmp-long v13, p1, v14

    if-eqz v13, :cond_7

    .line 697
    const-wide/32 v14, 0xf4240

    cmp-long v13, p1, v14

    if-lez v13, :cond_6

    const-wide/32 v14, 0xf4240

    sub-long v14, p1, v14

    :goto_3
    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 698
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/media/DLNAHTTPConnection;->mHadToDecreaseTime:Z

    .line 703
    :goto_4
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 697
    :cond_6
    const-wide/16 v14, 0x0

    goto :goto_3

    .line 700
    :cond_7
    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    goto :goto_4

    .line 706
    :cond_8
    if-eqz v6, :cond_9

    .line 707
    sub-long v14, p3, v8

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    .line 709
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/media/DLNAHTTPConnection;->mHadToDecreaseTime:Z

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    const-wide/32 v16, 0x100000

    cmp-long v13, v14, v16

    if-lez v13, :cond_a

    .line 712
    const-string v13, "DLNAHTTPConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "We would have to skip more than 1MB ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "because offsets needed/returned are: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " so instead we will try to approximate time: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " better"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTimeSeekIncrement:J

    add-long v14, v14, p1

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 716
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTimeSeekIncrement:J

    long-to-double v14, v14

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v14, v14, v16

    double-to-long v14, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTimeSeekIncrement:J

    .line 718
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual/range {p0 .. p0}, Landroid/media/DLNAHTTPConnection;->getDurationUs()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    cmp-long v13, v14, v16

    if-gez v13, :cond_a

    .line 721
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 725
    :cond_9
    move-object/from16 v0, p0

    iput-wide v8, v0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    .line 727
    :cond_a
    move-object/from16 v0, p0

    iput-wide v10, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 729
    const-wide/32 v14, 0x7a120

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/media/DLNAHTTPConnection;->mTimeSeekIncrement:J

    .line 730
    const-string v13, "DLNAHTTPConnection"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "npt response time: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", bytes: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private static final isLocalHost(Ljava/net/URL;)Z
    .locals 4
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    if-nez p0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    const-string/jumbo v3, "localhost"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 239
    goto :goto_0

    .line 241
    :cond_2
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 242
    goto :goto_0

    .line 244
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getIMemory()Landroid/os/IBinder;
.end method

.method private static final native native_init()V
.end method

.method private final native native_readAt(JJI)I
.end method

.method private final native native_setup()V
.end method

.method private parseBoolean(Ljava/lang/String;)Z
    .locals 8
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 169
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 167
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "yes"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private parseDeclaredDuration(Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v3, "DURATION="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 117
    .local v1, "durationIndex":I
    if-gez v1, :cond_0

    .line 118
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredDuration:J

    .line 138
    :goto_0
    return-void

    .line 122
    :cond_0
    add-int/lit8 v1, v1, 0x9

    .line 123
    const-string v2, ""

    .line 125
    .local v2, "durationString":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 128
    .local v0, "c":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    :cond_1
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_3

    .line 129
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 134
    goto :goto_1

    .line 136
    .end local v0    # "c":C
    :cond_3
    invoke-static {v2}, Landroid/media/DLNAHTTPConnection;->fromNptString(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    int-to-long v4, v3

    iput-wide v4, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredDuration:J

    .line 137
    iget-wide v4, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredDuration:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredDuration:J

    goto :goto_0
.end method

.method private parseDeclaredSize(Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v3, "SIZE="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 143
    .local v1, "sizeIndex":I
    if-gez v1, :cond_0

    .line 144
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredSize:J

    .line 163
    :goto_0
    return-void

    .line 148
    :cond_0
    add-int/lit8 v1, v1, 0x5

    .line 149
    const-string v2, ""

    .line 151
    .local v2, "sizeString":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 152
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 154
    .local v0, "c":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 160
    goto :goto_1

    .line 162
    .end local v0    # "c":C
    :cond_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredSize:J

    goto :goto_0
.end method

.method private declared-synchronized readAt(JJ[BI)I
    .locals 15
    .param p1, "time"    # J
    .param p3, "offset"    # J
    .param p5, "data"    # [B
    .param p6, "size"    # I

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    new-instance v10, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 450
    .local v5, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    const-wide/16 v10, 0x0

    cmp-long v10, p3, v10

    if-ltz v10, :cond_8

    const/4 v4, 0x1

    .line 454
    .local v4, "offsetIsKnown":Z
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-ltz v10, :cond_9

    const/4 v7, 0x1

    .line 455
    .local v7, "timeIsKnown":Z
    :goto_1
    const/4 v6, 0x1

    .line 457
    .local v6, "seekNeeded":Z
    if-eqz v4, :cond_0

    :try_start_1
    iget-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    cmp-long v10, p3, v10

    if-eqz v10, :cond_1

    :cond_0
    if-eqz v7, :cond_2

    iget-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mTime:J

    cmp-long v10, p1, v10

    if-nez v10, :cond_2

    .line 458
    :cond_1
    const/4 v6, 0x0

    .line 461
    :cond_2
    if-eqz v6, :cond_4

    .line 462
    if-nez v4, :cond_3

    if-eqz v7, :cond_a

    .line 463
    :cond_3
    invoke-direct/range {p0 .. p4}, Landroid/media/DLNAHTTPConnection;->seekTo(JJ)V

    .line 469
    :cond_4
    iget-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 470
    const-string v10, "DLNAHTTPConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "We are going to skip "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_5
    :goto_2
    iget-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    .line 474
    iget-object v10, p0, Landroid/media/DLNAHTTPConnection;->mInputStream:Ljava/io/InputStream;

    iget-wide v12, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    invoke-virtual {v10, v12, v13}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v8

    .line 475
    .local v8, "skipped":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gtz v10, :cond_b

    .line 476
    const-string v10, "DLNAHTTPConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Something is wrong, we skipped "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes instead of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " while adjusting TimeSeek request"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    .line 485
    .end local v8    # "skipped":J
    :cond_6
    iget-object v10, p0, Landroid/media/DLNAHTTPConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v11, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v10, v0, v11, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 487
    .local v3, "n":I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_7

    .line 490
    const/4 v3, 0x0

    .line 493
    :cond_7
    iget-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    int-to-long v12, v3

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J
    :try_end_1
    .catch Ljava/net/NoRouteToHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    .end local v3    # "n":I
    :goto_3
    monitor-exit p0

    return v3

    .line 453
    .end local v4    # "offsetIsKnown":Z
    .end local v6    # "seekNeeded":Z
    .end local v7    # "timeIsKnown":Z
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 454
    .restart local v4    # "offsetIsKnown":Z
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 465
    .restart local v6    # "seekNeeded":Z
    .restart local v7    # "timeIsKnown":Z
    :cond_a
    :try_start_2
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Can\'t handle readAt with time: -1 and offset: -1"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Ljava/net/NoRouteToHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 501
    :catch_0
    move-exception v2

    .line 502
    .local v2, "e":Ljava/net/NoRouteToHostException;
    :try_start_3
    const-string v10, "DLNAHTTPConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readAt time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p1

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", offset: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p3

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " => "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 504
    const/16 v3, -0x3f2

    goto :goto_3

    .line 482
    .end local v2    # "e":Ljava/net/NoRouteToHostException;
    .restart local v8    # "skipped":J
    :cond_b
    :try_start_4
    iget-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    sub-long/2addr v10, v8

    iput-wide v10, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J
    :try_end_4
    .catch Ljava/net/NoRouteToHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 505
    .end local v8    # "skipped":J
    :catch_1
    move-exception v2

    .line 510
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, -0x1

    goto :goto_3

    .line 511
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 517
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, -0x1

    goto :goto_3

    .line 447
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "offsetIsKnown":Z
    .end local v5    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v6    # "seekNeeded":Z
    .end local v7    # "timeIsKnown":Z
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method private seekTo(J)V
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/DLNAHTTPConnection;->seekTo(JJ)V

    .line 257
    return-void
.end method

.method private seekTo(JJ)V
    .locals 27
    .param p1, "time"    # J
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    const-string v22, "DLNAHTTPConnection"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "seekTo (time: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", offset: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-direct/range {p0 .. p0}, Landroid/media/DLNAHTTPConnection;->teardownConnection()V

    .line 265
    const/16 v16, 0x0

    .line 267
    .local v16, "redirectCount":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v21, v0

    .line 270
    .local v21, "url":Ljava/net/URL;
    invoke-static/range {v21 .. v21}, Landroid/media/DLNAHTTPConnection;->isLocalHost(Ljava/net/URL;)Z

    move-result v14

    .line 273
    .local v14, "noProxy":Z
    :cond_0
    :goto_0
    if-eqz v14, :cond_1

    .line 274
    sget-object v22, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual/range {v21 .. v22}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v22

    check-cast v22, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 280
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mHeaders:Ljava/util/Map;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mHeaders:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 284
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v24, v0

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 421
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "noProxy":Z
    .end local v21    # "url":Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 422
    .local v8, "e":Ljava/io/IOException;
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mTotalSize:J

    .line 423
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/DLNAHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 424
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 425
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    .line 426
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 427
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    .line 429
    throw v8

    .line 276
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v14    # "noProxy":Z
    .restart local v21    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v22

    check-cast v22, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 430
    .end local v14    # "noProxy":Z
    .end local v21    # "url":Ljava/net/URL;
    :catch_1
    move-exception v8

    .line 431
    .local v8, "e":Ljava/lang/Exception;
    const-string v22, "DLNAHTTPConnection"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception during seekTo: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    throw v8

    .line 289
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v14    # "noProxy":Z
    .restart local v21    # "url":Ljava/net/URL;
    :cond_2
    const-wide/16 v22, 0x0

    cmp-long v22, p3, v22

    if-lez v22, :cond_6

    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mSupportByteSeek:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    const-string v23, "Range"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "bytes="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    .line 305
    .local v17, "response":I
    const/16 v22, 0x12c

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    const/16 v22, 0x12d

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    const/16 v22, 0x12e

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    const/16 v22, 0x12f

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    const/16 v22, 0x133

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 350
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    .line 356
    :cond_4
    const/16 v22, 0xce

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    const-string v23, "Content-Range"

    invoke-virtual/range {v22 .. v23}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 364
    .local v7, "contentRange":Ljava/lang/String;
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mTotalSize:J

    .line 365
    if-eqz v7, :cond_5

    .line 370
    const/16 v22, 0x2f

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 371
    .local v11, "lastSlashPos":I
    if-ltz v11, :cond_5

    .line 372
    add-int/lit8 v22, v11, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v20

    .line 376
    .local v20, "total":Ljava/lang/String;
    :try_start_3
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mTotalSize:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 395
    .end local v7    # "contentRange":Ljava/lang/String;
    .end local v11    # "lastSlashPos":I
    .end local v20    # "total":Ljava/lang/String;
    :cond_5
    :goto_4
    const-wide/16 v22, 0x0

    cmp-long v22, p3, v22

    if-lez v22, :cond_11

    const/16 v22, 0xce

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_11

    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mSupportByteSeek:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 398
    new-instance v22, Ljava/io/IOException;

    invoke-direct/range {v22 .. v22}, Ljava/io/IOException;-><init>()V

    throw v22

    .line 292
    .end local v17    # "response":I
    :cond_6
    const-wide/16 v22, 0x0

    cmp-long v22, p1, v22

    if-ltz v22, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mSupportTimeSeek:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 293
    invoke-static/range {p1 .. p2}, Landroid/media/DLNAHTTPConnection;->toNptString(J)Ljava/lang/String;

    move-result-object v15

    .line 294
    .local v15, "nptTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    const-string v23, "TimeSeekRange.dlna.org"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "npt="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 296
    .end local v15    # "nptTime":Ljava/lang/String;
    :cond_7
    const-wide/16 v22, -0x1

    cmp-long v22, p1, v22

    if-nez v22, :cond_3

    const-wide/16 v22, 0x0

    cmp-long v22, p3, v22

    if-lez v22, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mSupportTimeSeek:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mSupportByteSeek:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    .line 298
    const-string v22, "DLNAHTTPConnection"

    const-string v23, "Server doesn\'t support byte seek and time is uknown, so we\'ll seek to 0 and try to parse time seek response later"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    const-string v23, "TimeSeekRange.dlna.org"

    const-string/jumbo v24, "npt=0.000-"

    invoke-virtual/range {v22 .. v24}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 314
    .restart local v17    # "response":I
    :cond_8
    add-int/lit8 v16, v16, 0x1

    const/16 v22, 0x14

    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    .line 315
    new-instance v22, Ljava/net/NoRouteToHostException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Too many redirects: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 318
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v13

    .line 319
    .local v13, "method":Ljava/lang/String;
    const/16 v22, 0x133

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    const-string v22, "GET"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    const-string v22, "HEAD"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 324
    new-instance v22, Ljava/net/NoRouteToHostException;

    const-string v23, "Invalid redirect"

    invoke-direct/range {v22 .. v23}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 326
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    const-string v23, "Location"

    invoke-virtual/range {v22 .. v23}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 327
    .local v12, "location":Ljava/lang/String;
    if-nez v12, :cond_b

    .line 328
    new-instance v22, Ljava/net/NoRouteToHostException;

    const-string v23, "Invalid redirect"

    invoke-direct/range {v22 .. v23}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 330
    :cond_b
    new-instance v21, Ljava/net/URL;

    .end local v21    # "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 331
    .restart local v21    # "url":Ljava/net/URL;
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v22

    const-string v23, "https"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v22

    const-string v23, "http"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 333
    new-instance v22, Ljava/net/NoRouteToHostException;

    const-string v23, "Unsupported protocol redirect"

    invoke-direct/range {v22 .. v23}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 335
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 336
    .local v19, "sameProtocol":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mAllowCrossProtocolRedirect:Z

    move/from16 v22, v0

    if-nez v22, :cond_d

    if-nez v19, :cond_d

    .line 337
    new-instance v22, Ljava/net/NoRouteToHostException;

    const-string v23, "Cross-protocol redirects are disallowed"

    invoke-direct/range {v22 .. v23}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 339
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 340
    .local v18, "sameHost":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mAllowCrossDomainRedirect:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    if-nez v18, :cond_e

    .line 341
    new-instance v22, Ljava/net/NoRouteToHostException;

    const-string v23, "Cross-domain redirects are disallowed"

    invoke-direct/range {v22 .. v23}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 344
    :cond_e
    const/16 v22, 0x133

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 346
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    goto/16 :goto_0

    .line 381
    .end local v12    # "location":Ljava/lang/String;
    .end local v13    # "method":Ljava/lang/String;
    .end local v18    # "sameHost":Z
    .end local v19    # "sameProtocol":Z
    :cond_f
    const/16 v22, 0xc8

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 382
    new-instance v22, Ljava/io/IOException;

    invoke-direct/range {v22 .. v22}, Ljava/io/IOException;-><init>()V

    throw v22

    .line 384
    :cond_10
    const-wide/16 v22, -0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mTotalSize:J

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v22, v0

    const-string v23, "Content-Length"

    invoke-virtual/range {v22 .. v23}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v6

    .line 387
    .local v6, "contentLength":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 389
    :try_start_5
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mTotalSize:J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    .line 390
    :catch_2
    move-exception v22

    goto/16 :goto_4

    .line 401
    .end local v6    # "contentLength":Ljava/lang/String;
    :cond_11
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mSupportTimeSeek:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/DLNAHTTPConnection;->mSupportByteSeek:Z

    move/from16 v22, v0

    if-nez v22, :cond_14

    .line 402
    invoke-direct/range {p0 .. p4}, Landroid/media/DLNAHTTPConnection;->handleTimeSeekResponse(JJ)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 403
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/DLNAHTTPConnection;->seekTo(JJ)V

    .line 434
    :cond_12
    :goto_5
    return-void

    .line 407
    :cond_13
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/DLNAHTTPConnection;->mHadToDecreaseTime:Z

    .line 410
    :cond_14
    new-instance v22, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/DLNAHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 415
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-nez v22, :cond_15

    .line 416
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    .line 418
    :cond_15
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/DLNAHTTPConnection;->mTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-nez v22, :cond_12

    .line 419
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/DLNAHTTPConnection;->mTime:J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    .line 377
    .restart local v7    # "contentRange":Ljava/lang/String;
    .restart local v11    # "lastSlashPos":I
    .restart local v20    # "total":Ljava/lang/String;
    :catch_3
    move-exception v22

    goto/16 :goto_4
.end method

.method private teardownConnection()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 215
    iput-object v1, p0, Landroid/media/DLNAHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 217
    iget-object v0, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 218
    iput-object v1, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 220
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    .line 221
    iput-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mTime:J

    .line 222
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mSkipRead:J

    .line 224
    :cond_0
    return-void
.end method

.method private static toNptString(J)Ljava/lang/String;
    .locals 6
    .param p0, "timeUs"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v2, p0, v4

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v2, p0, v4

    rem-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/lang/String;

    .prologue
    .line 87
    move-object v2, p1

    .line 88
    .local v2, "originalURI":Ljava/lang/String;
    const-string v3, ",SEEK_TYPE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 89
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 90
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 97
    :cond_0
    iget-object v3, p0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 99
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/DLNAHTTPConnection;->disconnect()V

    .line 100
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/DLNAHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 101
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    .line 102
    iput-object v2, p0, Landroid/media/DLNAHTTPConnection;->mOriginalURI:Ljava/lang/String;

    .line 103
    invoke-direct {p0, p2}, Landroid/media/DLNAHTTPConnection;->convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Landroid/media/DLNAHTTPConnection;->mHeaders:Ljava/util/Map;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    iget-object v3, p0, Landroid/media/DLNAHTTPConnection;->mOriginalURI:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/media/DLNAHTTPConnection;->parseDeclaredDuration(Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Landroid/media/DLNAHTTPConnection;->mOriginalURI:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/media/DLNAHTTPConnection;->parseDeclaredSize(Ljava/lang/String;)V

    .line 111
    :cond_2
    invoke-direct {p0}, Landroid/media/DLNAHTTPConnection;->native_getIMemory()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    return-object v3

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized disconnect()V
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/media/DLNAHTTPConnection;->teardownConnection()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/DLNAHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/DLNAHTTPConnection;->mURL:Ljava/net/URL;

    .line 210
    const-string v0, ""

    iput-object v0, p0, Landroid/media/DLNAHTTPConnection;->mOriginalURI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public extractNptResponseData(Ljava/lang/String;[J)V
    .locals 10
    .param p1, "timeSeekString"    # Ljava/lang/String;
    .param p2, "output"    # [J

    .prologue
    .line 618
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "array":[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v0, v6

    const-string/jumbo v7, "npt="

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 622
    array-length v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 623
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v0, v6

    const-string v7, "bytes="

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 625
    const/4 v5, 0x1

    aget-object v5, v0, v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "bytesArray":[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, p2, v5

    .line 627
    array-length v5, v1

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 628
    const/4 v5, 0x1

    aget-object v5, v1, v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 629
    .local v4, "offsetsArray":[Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, p2, v5

    .line 638
    .end local v4    # "offsetsArray":[Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, "nptArray":[Ljava/lang/String;
    const/4 v5, 0x2

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Landroid/media/DLNAHTTPConnection;->fromNptString(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    aput-wide v6, p2, v5

    .line 640
    const/4 v5, 0x3

    const-wide/16 v6, -0x1

    aput-wide v6, p2, v5

    .line 641
    array-length v5, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 642
    const/4 v5, 0x1

    aget-object v5, v3, v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, "durationArray":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 644
    const/4 v5, 0x3

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Landroid/media/DLNAHTTPConnection;->fromNptString(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    aput-wide v6, p2, v5

    .line 645
    const/4 v5, 0x3

    const/4 v6, 0x3

    aget-wide v6, p2, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    const-wide/16 v6, -0x1

    :goto_1
    aput-wide v6, p2, v5

    .line 648
    .end local v2    # "durationArray":[Ljava/lang/String;
    :cond_0
    return-void

    .line 631
    .end local v3    # "nptArray":[Ljava/lang/String;
    :cond_1
    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    aput-wide v6, p2, v5

    goto :goto_0

    .line 634
    .end local v1    # "bytesArray":[Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Can\'t seek because time seek response doesn\'t contain info about bytes"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 645
    .restart local v1    # "bytesArray":[Ljava/lang/String;
    .restart local v2    # "durationArray":[Ljava/lang/String;
    .restart local v3    # "nptArray":[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x3

    aget-wide v6, p2, v6

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 736
    invoke-direct {p0}, Landroid/media/DLNAHTTPConnection;->native_finalize()V

    .line 737
    return-void
.end method

.method public getCurrentOffset()J
    .locals 2

    .prologue
    .line 555
    iget-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mCurrentOffset:J

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 545
    iget-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 546
    iget-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mDuration:J

    .line 551
    :goto_0
    return-wide v0

    .line 547
    :cond_0
    iget-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 548
    iget-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredDuration:J

    goto :goto_0

    .line 551
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getEndOffset()J
    .locals 2

    .prologue
    .line 560
    iget-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mEndOffset:J

    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 588
    iget-object v1, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    .line 590
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/DLNAHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :cond_0
    iget-object v1, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 570
    iget-object v1, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    .line 572
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Landroid/media/DLNAHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :cond_0
    iget-object v1, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "application/octet-stream"

    goto :goto_0
.end method

.method public getSeekTimeUs()J
    .locals 2

    .prologue
    .line 565
    iget-wide v0, p0, Landroid/media/DLNAHTTPConnection;->mTime:J

    return-wide v0
.end method

.method public getSize()J
    .locals 10

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v8, 0x0

    .line 523
    iget-wide v4, p0, Landroid/media/DLNAHTTPConnection;->mTotalSize:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_0

    iget-wide v4, p0, Landroid/media/DLNAHTTPConnection;->mEndOffset:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_0

    iget-wide v4, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredSize:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_0

    .line 525
    :try_start_0
    iget-object v1, p0, Landroid/media/DLNAHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    .line 526
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Landroid/media/DLNAHTTPConnection;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :cond_0
    :goto_0
    iget-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mTotalSize:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_2

    iget-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mTotalSize:J

    .line 540
    :goto_1
    return-wide v2

    .line 527
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Landroid/media/DLNAHTTPConnection;->mSupportTimeSeek:Z

    if-eqz v1, :cond_0

    .line 528
    const-string v1, "DLNAHTTPConnection"

    const-string v4, "getSize forcing seekTo 100ms to get mEndOffset"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 530
    const-wide/32 v4, 0x186a0

    const-wide/16 v6, -0x1

    :try_start_2
    invoke-direct {p0, v4, v5, v6, v7}, Landroid/media/DLNAHTTPConnection;->seekTo(JJ)V

    .line 531
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 539
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mEndOffset:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_3

    iget-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mEndOffset:J

    goto :goto_1

    .line 540
    :cond_3
    iget-wide v2, p0, Landroid/media/DLNAHTTPConnection;->mDeclaredSize:J

    goto :goto_1
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dlna://URI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/DLNAHTTPConnection;->mOriginalURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readAt(JI)I
    .locals 7
    .param p1, "offset"    # J
    .param p3, "size"    # I

    .prologue
    .line 438
    const-wide/16 v2, -0x1

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/media/DLNAHTTPConnection;->readAtTime(JJI)I

    move-result v0

    return v0
.end method

.method public readAtTime(JJI)I
    .locals 1
    .param p1, "time"    # J
    .param p3, "offset"    # J
    .param p5, "size"    # I

    .prologue
    .line 443
    invoke-direct/range {p0 .. p5}, Landroid/media/DLNAHTTPConnection;->native_readAt(JJI)I

    move-result v0

    return v0
.end method

.method public setSeekModeSupport(II)V
    .locals 3
    .param p1, "byteSeek"    # I
    .param p2, "timeSeek"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/media/DLNAHTTPConnection;->mSupportByteSeek:Z

    .line 252
    if-eqz p2, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/media/DLNAHTTPConnection;->mSupportTimeSeek:Z

    .line 253
    return-void

    :cond_0
    move v0, v2

    .line 251
    goto :goto_0

    :cond_1
    move v1, v2

    .line 252
    goto :goto_1
.end method

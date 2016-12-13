.class final Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;
.super Ljava/lang/Object;
.source "PacketFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/packetfilter/PacketFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PacketFilterNativeDaemonConnector"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final CommandExcuteSucceeded:Ljava/lang/String; = "801"

.field private static final WARN_EXECUTE_DELAY_MS:J = 0x7d0L


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mProcessName:Ljava/lang/String;

.field private mSocket:Landroid/net/LocalSocket;

.field private mSocketName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "socketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1672
    iput-object p1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mSocketName:Ljava/lang/String;

    .line 1673
    iput-object p2, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mProcessName:Ljava/lang/String;

    .line 1674
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/packetfilter/PacketFilter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/sonymobile/packetfilter/PacketFilter$1;

    .prologue
    .line 1646
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;

    .prologue
    .line 1646
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->cleanup()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;Lcom/sonymobile/packetfilter/PacketFilter$Operation;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;
    .param p1, "x1"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 1646
    invoke-direct {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->executeImpl(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)I

    move-result v0

    return v0
.end method

.method private cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1697
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 1699
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1703
    :goto_0
    iput-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 1705
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 1707
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1711
    :goto_1
    iput-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mInputStream:Ljava/io/InputStream;

    .line 1713
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_2

    .line 1715
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1719
    :goto_2
    iput-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 1721
    :cond_2
    return-void

    .line 1700
    :catch_0
    move-exception v0

    .line 1701
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed closing output stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 1708
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1709
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed closing input stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_1

    .line 1716
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1717
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed closing socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1680
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_0

    .line 1691
    :goto_0
    return-void

    .line 1683
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conecting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mSocketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1684
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    .line 1685
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mSocketName:Ljava/lang/String;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 1687
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 1688
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mInputStream:Ljava/io/InputStream;

    .line 1689
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 1690
    const-string v1, "Conected"

    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private executeImpl(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)I
    .locals 18
    .param p1, "current"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 1732
    :try_start_0
    const-string v11, "executeImpl"

    invoke-static {v11}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1733
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->connect()V

    .line 1735
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1736
    .local v12, "startTime":J
    new-instance v11, Ljava/lang/StringBuilder;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$2600(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x20

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1737
    .local v3, "cmd":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    const/16 v11, 0x20

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1739
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4300(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    const/16 v11, 0x20

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1741
    const-string v11, "newChainCmd"

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4300(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1742
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTable:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4400(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    const/16 v11, 0x20

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1744
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mChain:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4500(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1761
    .local v8, "logCmd":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SND -> {"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "}"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1763
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1764
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1765
    .local v10, "sentCmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/io/OutputStream;->write([B)V

    .line 1768
    const/16 v11, 0x400

    new-array v2, v11, [B

    .line 1769
    .local v2, "buffer":[B
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->mInputStream:Ljava/io/InputStream;

    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v11, v2, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1771
    .local v4, "count":I
    const/4 v11, 0x1

    if-ge v4, v11, :cond_3

    .line 1772
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "read count: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " mOperationName: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4300(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " mOperationType: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4800(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " mChain: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mChain:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4500(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " mTable: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTable:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4400(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " mScriptFullpath: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mScriptFullpath:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4600(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " mScriptFullpath: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mScriptFullpathIPv6:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4700(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    .line 1779
    const/4 v11, -0x5

    .line 1803
    .end local v2    # "buffer":[B
    .end local v3    # "cmd":Ljava/lang/StringBuilder;
    .end local v4    # "count":I
    .end local v8    # "logCmd":Ljava/lang/String;
    .end local v10    # "sentCmd":Ljava/lang/String;
    .end local v12    # "startTime":J
    :goto_1
    return v11

    .line 1745
    .restart local v3    # "cmd":Ljava/lang/StringBuilder;
    .restart local v12    # "startTime":J
    :cond_0
    const-string v11, "updateChainCmd"

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4300(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1746
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTable:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4400(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    const/16 v11, 0x20

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1748
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mChain:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4500(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    const/16 v11, 0x20

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1750
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mScriptFullpath:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4600(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    const/16 v11, 0x20

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1752
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mScriptFullpathIPv6:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4700(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1796
    .end local v3    # "cmd":Ljava/lang/StringBuilder;
    .end local v12    # "startTime":J
    :catch_0
    move-exception v5

    .line 1797
    .local v5, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure connecting to daemon: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    .line 1798
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->cleanup()V

    .line 1799
    const/4 v11, -0x5

    goto :goto_1

    .line 1753
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v3    # "cmd":Ljava/lang/StringBuilder;
    .restart local v12    # "startTime":J
    :cond_1
    :try_start_1
    const-string v11, "removeChainCmd"

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4300(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1754
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mChain:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4500(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1800
    .end local v3    # "cmd":Ljava/lang/StringBuilder;
    .end local v12    # "startTime":J
    :catch_1
    move-exception v5

    .line 1801
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read socket inputstream error: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    .line 1802
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->cleanup()V

    .line 1803
    const/4 v11, -0x5

    goto/16 :goto_1

    .line 1756
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "cmd":Ljava/lang/StringBuilder;
    .restart local v12    # "startTime":J
    :cond_2
    :try_start_2
    const-string v11, "unexpected operation name"

    invoke-static {v11}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1757
    const/4 v11, -0x6

    goto/16 :goto_1

    .line 1781
    .restart local v2    # "buffer":[B
    .restart local v4    # "count":I
    .restart local v8    # "logCmd":Ljava/lang/String;
    .restart local v10    # "sentCmd":Ljava/lang/String;
    :cond_3
    add-int/lit8 v11, v4, -0x1

    aget-byte v11, v2, v11

    if-eqz v11, :cond_4

    .line 1782
    const-string v11, "Protocol error (invalid response)"

    invoke-static {v11}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1783
    new-instance v11, Ljava/io/IOException;

    const-string v14, "Protocol error (invalid response)"

    invoke-direct {v11, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1785
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 1786
    new-instance v9, Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v2, v11, v4, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1787
    .local v9, "rawEvent":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RCV <- {"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "}"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1789
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1790
    .local v6, "endTime":J
    sub-long v14, v6, v12

    const-wide/16 v16, 0x7d0

    cmp-long v11, v14, v16

    if-lez v11, :cond_5

    .line 1791
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Execute timeout warning {"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "} took too long ("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v14, v6, v12

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "ms)"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1795
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->parseRawEvent(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    goto/16 :goto_1
.end method

.method private parseRawEvent(Ljava/lang/String;)I
    .locals 4
    .param p1, "rawEvent"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1814
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1815
    .local v0, "rawArray":[Ljava/lang/String;
    aget-object v2, v0, v1

    const-string v3, "801"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1818
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x5

    goto :goto_0
.end method

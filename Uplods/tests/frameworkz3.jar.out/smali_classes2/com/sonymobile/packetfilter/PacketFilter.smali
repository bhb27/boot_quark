.class public Lcom/sonymobile/packetfilter/PacketFilter;
.super Ljava/lang/Object;
.source "PacketFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;,
        Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;,
        Lcom/sonymobile/packetfilter/PacketFilter$UidManager;,
        Lcom/sonymobile/packetfilter/PacketFilter$Operation;,
        Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    }
.end annotation


# static fields
.field private static final ADMIN_MAX:I = 0x5

.field private static final ADMIN_RULE_MAX:I = 0x64

.field public static final BLOCK_STRENGTH_HARD:I = 0x1

.field public static final BLOCK_STRENGTH_NORMAL:I = 0x0

.field public static final CHAIN_INPUT:Ljava/lang/String; = "INPUT"

.field public static final CHAIN_OUTPUT:Ljava/lang/String; = "OUTPUT"

.field private static final INSTRUCTION_KEY:Ljava/lang/String; = "apfd"

.field public static final IPV4:I = 0x0

.field public static final IPV6:I = 0x1

.field private static final MAX_CHAIN_LENGTH:I = 0xe

.field public static final PACKET_ACCEPT:I = 0x1

.field public static final PACKET_APPEND:I = 0x1

.field public static final PACKET_DROP:I = 0x0

.field public static final PACKET_INSERT:I = 0x0

.field private static final PATTERN_ASCCODE:Ljava/util/regex/Pattern;

.field private static final PATTERN_ENGLISH:Ljava/util/regex/Pattern;

.field private static final PATTERN_IP_ADDR:Ljava/util/regex/Pattern;

.field private static final PATTERN_IP_MASK_BIT:Ljava/util/regex/Pattern;

.field private static final PATTERN_IP_MASK_VALUE:Ljava/util/regex/Pattern;

.field private static final PATTERN_IP_RANGE:Ljava/util/regex/Pattern;

.field private static final PATTERN_IP_SINGLE:Ljava/util/regex/Pattern;

.field private static final PATTERN_IP_SINGLE_V6_COMPRESSED:Ljava/util/regex/Pattern;

.field private static final PATTERN_IP_SINGLE_V6_STD:Ljava/util/regex/Pattern;

.field private static final REGEX_ASCCODE:Ljava/lang/String; = "[\\u0020-\\u007E]+"

.field private static final REGEX_DIVIDE:Ljava/lang/String; = "\\."

.field private static final REGEX_ENGLISH:Ljava/lang/String; = "[a-zA-Z0-9]"

.field private static final REGEX_HYPHEN:Ljava/lang/String; = "-"

.field private static final REGEX_IP:Ljava/lang/String; = "((25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)"

.field private static final REGEX_IPV6_HEX_COMPRESSED:Ljava/lang/String; = "^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$"

.field private static final REGEX_IPV6_STD:Ljava/lang/String; = "^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$"

.field private static final REGEX_IP_ADDR:Ljava/lang/String; = "[-\\./0-9]+"

.field private static final REGEX_IP_MASK_BIT:Ljava/lang/String; = "((25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\/(3[0-2]|2\\d|1\\d|[0-9])"

.field private static final REGEX_IP_MASK_VALUE:Ljava/lang/String; = "((25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\/((25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)"

.field private static final REGEX_IP_RANGE:Ljava/lang/String; = "((25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)-((25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)"

.field private static final REGEX_MASK:Ljava/lang/String; = "\\/"

.field private static final REGEX_MASK_BIT:Ljava/lang/String; = "(3[0-2]|2\\d|1\\d|[0-9])"

.field private static final REGEX_SKIP:Ljava/lang/String; = "\\"

.field public static final R_CLIENT_OVERRUN:I = -0x2

.field public static final R_ILL_PARAM:I = -0x1

.field public static final R_INVALID:I = -0x6

.field public static final R_OK:I = 0x0

.field public static final R_RULE_OVERRUN:I = -0x3

.field public static final R_RUN_FAILED:I = -0x5

.field public static final R_RUN_TIMEOUT:I = -0x4

.field private static final SCRIPT_DIR:Ljava/lang/String; = "/data/system/apfd/"

.field private static final SOCKET_NAME:Ljava/lang/String; = "apfd_socket"

.field private static final SYMBOL_BLANK:C = ' '

.field private static final SYMBOL_COLON_SLASH:Ljava/lang/String; = "://"

.field private static final SYMBOL_DIVIDE:C = '.'

.field private static final SYMBOL_SLASH:C = '/'

.field private static final TAG:Ljava/lang/String; = "PacketFilter"

.field private static final TIMEOUT:I = 0x7530

.field private static final URL_MAX:I = 0x80

.field private static final logDebugFlag:Z = false

.field private static final logErrorFlag:Z = true


# instance fields
.field private mAppendChainName:Ljava/lang/String;

.field private mBlockStrength:I

.field private mChainName:Ljava/lang/String;

.field private mClientDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sonymobile/packetfilter/PacketFilter$ClientData;",
            ">;"
        }
    .end annotation
.end field

.field private mConnector:Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mInsertChainName:Ljava/lang/String;

.field private mOidGenerator:Ljava/util/concurrent/atomic/AtomicLong;

.field private mOperations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/packetfilter/PacketFilter$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoot:Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;

.field private mUidManager:Lcom/sonymobile/packetfilter/PacketFilter$UidManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 153
    const-string v0, "[\\u0020-\\u007E]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_ASCCODE:Ljava/util/regex/Pattern;

    .line 154
    const-string v0, "((25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_SINGLE:Ljava/util/regex/Pattern;

    .line 155
    const-string v0, "((25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\/(3[0-2]|2\\d|1\\d|[0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_MASK_BIT:Ljava/util/regex/Pattern;

    .line 156
    const-string v0, "((25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\/((25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_MASK_VALUE:Ljava/util/regex/Pattern;

    .line 157
    const-string v0, "((25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)-((25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_RANGE:Ljava/util/regex/Pattern;

    .line 158
    const-string v0, "[a-zA-Z0-9]"

    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->toRegex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_ENGLISH:Ljava/util/regex/Pattern;

    .line 159
    const-string v0, "[-\\./0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_ADDR:Ljava/util/regex/Pattern;

    .line 160
    const-string v0, "^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_SINGLE_V6_STD:Ljava/util/regex/Pattern;

    .line 161
    const-string v0, "^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_SINGLE_V6_COMPRESSED:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "chainName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xe

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x0

    invoke-direct {v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mOidGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    .line 167
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mOperations:Ljava/util/LinkedList;

    .line 168
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mClientDataMap:Ljava/util/HashMap;

    .line 171
    iput-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mThread:Ljava/lang/Thread;

    .line 173
    new-instance v1, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;

    invoke-direct {v1, p0, v3}, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;Lcom/sonymobile/packetfilter/PacketFilter$1;)V

    iput-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mUidManager:Lcom/sonymobile/packetfilter/PacketFilter$UidManager;

    .line 178
    iput v2, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mBlockStrength:I

    .line 180
    new-instance v1, Lcom/sonymobile/packetfilter/PacketFilter$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/packetfilter/PacketFilter$1;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;)V

    iput-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    iput-object p2, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mRoot:Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    invoke-virtual {p3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .end local p3    # "chainName":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mChainName:Ljava/lang/String;

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mChainName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_INSERT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mInsertChainName:Ljava/lang/String;

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mChainName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_APPEND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mAppendChainName:Ljava/lang/String;

    .line 201
    new-instance v1, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;

    const-string v2, "apfd_socket"

    const-string v4, "apfd"

    invoke-direct {v1, v2, v4, v3}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/packetfilter/PacketFilter$1;)V

    iput-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mConnector:Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;

    .line 203
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter;->registerBroadcast()V

    .line 205
    const-string v1, "create a new chain once constructing the instance of packet filter"

    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 206
    new-instance v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    const/4 v2, 0x4

    move-object v1, p0

    move-object v4, v3

    move v6, v5

    move v7, v5

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;ILandroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;IIILcom/sonymobile/packetfilter/PacketFilter$1;)V

    .line 207
    .local v0, "operation":Lcom/sonymobile/packetfilter/PacketFilter$Operation;
    invoke-direct {p0, v0}, Lcom/sonymobile/packetfilter/PacketFilter;->addOperation(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)J

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "chainName"    # Ljava/lang/String;
    .param p4, "blockStrength"    # I

    .prologue
    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/packetfilter/PacketFilter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iput p4, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mBlockStrength:I

    .line 213
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/packetfilter/PacketFilter;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilter;->updatePackageName(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mClientDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mInsertChainName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mAppendChainName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonymobile/packetfilter/PacketFilter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;

    .prologue
    .line 66
    iget v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mBlockStrength:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sonymobile/packetfilter/PacketFilter;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/sonymobile/packetfilter/PacketFilter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilter;->toHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonymobile/packetfilter/PacketFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sonymobile/packetfilter/PacketFilter;)Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mConnector:Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mOperations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sonymobile/packetfilter/PacketFilter;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$3000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/sonymobile/packetfilter/PacketFilter;->getCleanPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/sonymobile/packetfilter/PacketFilter;->checkIPv6(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/sonymobile/packetfilter/PacketFilter;->checkIP(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/sonymobile/packetfilter/PacketFilter;->checkIPMask(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/sonymobile/packetfilter/PacketFilter;->checkIPRange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_ASCCODE:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$3600()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_ADDR:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$3700()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_ENGLISH:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mChainName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mRoot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/packetfilter/PacketFilter;)Lcom/sonymobile/packetfilter/PacketFilter$UidManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mUidManager:Lcom/sonymobile/packetfilter/PacketFilter$UidManager;

    return-object v0
.end method

.method private addOperation(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)J
    .locals 4
    .param p1, "operation"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mOidGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    # setter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J
    invoke-static {p1, v0, v1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$2602(Lcom/sonymobile/packetfilter/PacketFilter$Operation;J)J

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOperation mOid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J
    invoke-static {p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$2600(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1442
    # invokes: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->check()Z
    invoke-static {p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4200(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1443
    const-wide/16 v0, -0x1

    .line 1456
    :goto_0
    return-wide v0

    .line 1446
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mOperations:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1447
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 1448
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mThread:Ljava/lang/Thread;

    .line 1449
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new thread start: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1454
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mOperations:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1455
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1456
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J
    invoke-static {p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$2600(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)J

    move-result-wide v0

    goto :goto_0

    .line 1452
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "use existing thread: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 1455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static checkIP(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1555
    sget-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_SINGLE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1556
    const/4 v0, 0x1

    .line 1558
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkIPMask(Ljava/lang/String;)Z
    .locals 11
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1568
    sget-object v9, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_MASK_BIT:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1571
    :try_start_0
    const-string v9, "\\/"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1572
    .local v4, "ips":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v4, v9

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1573
    .local v1, "fields":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    shl-int/lit8 v9, v9, 0x18

    const/4 v10, 0x1

    aget-object v10, v1, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x2

    aget-object v10, v1, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x3

    aget-object v10, v1, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    or-int v5, v9, v10

    .line 1576
    .local v5, "majornet":I
    const/4 v9, -0x1

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    rsub-int/lit8 v10, v10, 0x20

    shl-int v6, v9, v10

    .line 1577
    .local v6, "subnet":I
    or-int v9, v5, v6

    if-ne v9, v6, :cond_1

    .line 1610
    .end local v1    # "fields":[Ljava/lang/String;
    .end local v4    # "ips":[Ljava/lang/String;
    .end local v5    # "majornet":I
    .end local v6    # "subnet":I
    :cond_0
    :goto_0
    return v7

    .restart local v1    # "fields":[Ljava/lang/String;
    .restart local v4    # "ips":[Ljava/lang/String;
    .restart local v5    # "majornet":I
    .restart local v6    # "subnet":I
    :cond_1
    move v7, v8

    .line 1580
    goto :goto_0

    .line 1582
    .end local v1    # "fields":[Ljava/lang/String;
    .end local v4    # "ips":[Ljava/lang/String;
    .end local v5    # "majornet":I
    .end local v6    # "subnet":I
    :catch_0
    move-exception v0

    .line 1583
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URL: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " is unsupported"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    move v7, v8

    .line 1584
    goto :goto_0

    .line 1586
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    sget-object v9, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_MASK_VALUE:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1589
    :try_start_1
    const-string v9, "\\/"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1590
    .restart local v4    # "ips":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v4, v9

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1591
    .local v2, "fields0":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v4, v9

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1592
    .local v3, "fields1":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    shl-int/lit8 v9, v9, 0x18

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x2

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x3

    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    or-int v5, v9, v10

    .line 1596
    .restart local v5    # "majornet":I
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    shl-int/lit8 v9, v9, 0x18

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x2

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x3

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    or-int v6, v9, v10

    .line 1600
    .restart local v6    # "subnet":I
    or-int v9, v5, v6

    if-eq v9, v6, :cond_0

    move v7, v8

    .line 1603
    goto/16 :goto_0

    .line 1605
    .end local v2    # "fields0":[Ljava/lang/String;
    .end local v3    # "fields1":[Ljava/lang/String;
    .end local v4    # "ips":[Ljava/lang/String;
    .end local v5    # "majornet":I
    .end local v6    # "subnet":I
    :catch_1
    move-exception v0

    .line 1606
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URL: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " is unsupported"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    move v7, v8

    .line 1607
    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v7, v8

    .line 1610
    goto/16 :goto_0
.end method

.method private static checkIPRange(Ljava/lang/String;)Z
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1620
    sget-object v7, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_RANGE:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1622
    :try_start_0
    const-string v7, "-"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1623
    .local v4, "ips":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1624
    .local v1, "fields0":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v4, v7

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1625
    .local v2, "fields1":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_0

    .line 1626
    aget-object v7, v1, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-le v7, v8, :cond_1

    .line 1638
    .end local v1    # "fields0":[Ljava/lang/String;
    .end local v2    # "fields1":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "ips":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 1628
    .restart local v1    # "fields0":[Ljava/lang/String;
    .restart local v2    # "fields1":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "ips":[Ljava/lang/String;
    :cond_1
    aget-object v7, v1, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v8, v2, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-ge v7, v8, :cond_2

    move v5, v6

    .line 1629
    goto :goto_1

    .line 1625
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1633
    .end local v1    # "fields0":[Ljava/lang/String;
    .end local v2    # "fields1":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "ips":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1634
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is unsupported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static checkIPv6(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1541
    sget-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_SINGLE_V6_STD:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonymobile/packetfilter/PacketFilter;->PATTERN_IP_SINGLE_V6_COMPRESSED:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1543
    :cond_0
    const/4 v0, 0x1

    .line 1545
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkUserPermission()V
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mContext:Landroid/content/Context;

    const-string v1, "com.sonymobile.permission.PACKET_FILTER"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "need PACKET_FILTER permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    return-void
.end method

.method private static getCleanPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 1525
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 1531
    :cond_0
    :goto_0
    return-object v1

    .line 1526
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1527
    .local v1, "output":Ljava/lang/String;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1528
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 1529
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCurrentUser()I
    .locals 3

    .prologue
    .line 1516
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1518
    .local v0, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1520
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static logDebug(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1485
    return-void
.end method

.method static logError(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1492
    const-string v0, "PacketFilter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    return-void
.end method

.method private registerBroadcast()V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    return-void
.end method

.method private toHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1501
    .local v1, "hexString":Ljava/lang/StringBuilder;
    const-string v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1502
    .local v6, "strs":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 1503
    .local v5, "str":Ljava/lang/String;
    const-string v7, "|"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1505
    .local v4, "lengthByHex":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1508
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    const-string v7, "|"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1512
    .end local v4    # "lengthByHex":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static toRegex(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 1474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(-|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "){0,61}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1475
    .local v0, "domain":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(?=^.{3,255}$)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\\."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")+\\.?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updatePackageName(Ljava/lang/String;)J
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 367
    const/4 v1, 0x1

    new-array v4, v1, [Lcom/sonymobile/packetfilter/PacketFilterRuleBase;

    const/4 v1, 0x0

    new-instance v2, Lcom/sonymobile/packetfilter/PacketFilterRuleBase;

    invoke-direct {v2, p1}, Lcom/sonymobile/packetfilter/PacketFilterRuleBase;-><init>(Ljava/lang/String;)V

    aput-object v2, v4, v1

    .line 368
    .local v4, "rules":[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    new-instance v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    const/4 v2, 0x3

    move-object v1, p0

    move v6, v5

    move v7, v5

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;ILandroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;IIILcom/sonymobile/packetfilter/PacketFilter$1;)V

    .line 369
    .local v0, "operation":Lcom/sonymobile/packetfilter/PacketFilter$Operation;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePackageName operation. package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0, v0}, Lcom/sonymobile/packetfilter/PacketFilter;->addOperation(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public addPacketFilterRulesToList(Landroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;II)J
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "rules"    # [Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    .param p3, "target"    # I
    .param p4, "chain"    # I

    .prologue
    .line 270
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/packetfilter/PacketFilter;->addPacketFilterRulesToList(Landroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public addPacketFilterRulesToList(Landroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;III)J
    .locals 15
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "rules"    # [Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    .param p3, "target"    # I
    .param p4, "chain"    # I
    .param p5, "userId"    # I

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter;->checkUserPermission()V

    .line 247
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v3, v0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v3, 0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_2

    if-eqz p4, :cond_2

    .line 250
    :cond_1
    const-wide/16 v4, -0x1

    .line 265
    :goto_0
    return-wide v4

    .line 253
    :cond_2
    move-object/from16 v11, p2

    .local v11, "arr$":[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    array-length v13, v11

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_4

    aget-object v14, v11, v12

    .line 254
    .local v14, "rule":Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    if-nez v14, :cond_3

    const-wide/16 v4, -0x1

    goto :goto_0

    .line 253
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 257
    .end local v14    # "rule":Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    :cond_4
    move-object/from16 v0, p2

    array-length v3, v0

    const/16 v4, 0x64

    if-le v3, v4, :cond_5

    .line 258
    const-wide/16 v4, -0x3

    goto :goto_0

    .line 261
    :cond_5
    new-instance v2, Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    const/4 v4, 0x1

    const/4 v10, 0x0

    move-object v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;ILandroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;IIILcom/sonymobile/packetfilter/PacketFilter$1;)V

    .line 263
    .local v2, "operation":Lcom/sonymobile/packetfilter/PacketFilter$Operation;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPacketFilterRulesToList operation. name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", chain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0, v2}, Lcom/sonymobile/packetfilter/PacketFilter;->addOperation(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)J

    move-result-wide v4

    goto :goto_0
.end method

.method public getPacketFilterRules(Landroid/content/ComponentName;II)[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "target"    # I
    .param p3, "chain"    # I

    .prologue
    .line 346
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonymobile/packetfilter/PacketFilter;->getPacketFilterRules(Landroid/content/ComponentName;III)[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;

    move-result-object v0

    return-object v0
.end method

.method public getPacketFilterRules(Landroid/content/ComponentName;III)[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "target"    # I
    .param p3, "chain"    # I
    .param p4, "userId"    # I

    .prologue
    const/4 v4, 0x1

    .line 311
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter;->checkUserPermission()V

    .line 312
    if-eqz p1, :cond_1

    if-eq p2, v4, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eq p3, v4, :cond_2

    if-eqz p3, :cond_2

    .line 314
    :cond_1
    const/4 v3, 0x0

    .line 342
    :goto_0
    return-object v3

    .line 318
    :cond_2
    const/4 v3, 0x0

    .line 320
    .local v3, "rules":[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    new-instance v1, Landroid/content/ComponentName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .local v1, "client":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mClientDataMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 323
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mClientDataMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    .line 324
    .local v0, "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    if-eqz v0, :cond_3

    .line 326
    if-nez p3, :cond_4

    .line 327
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$400(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 331
    .local v2, "ruleList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    :goto_1
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 332
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v3, v4, [Lcom/sonymobile/packetfilter/PacketFilterRuleBase;

    .line 333
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 339
    .end local v2    # "ruleList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    :cond_3
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPacketFilterRules rules. name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", chain: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_4
    :try_start_1
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$500(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .restart local v2    # "ruleList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    goto :goto_1

    .line 335
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPacketFilterRules null. name: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", target: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", chain: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", userId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 339
    .end local v0    # "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    .end local v2    # "ruleList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public removeAllPacketFilterRulesFromList(Landroid/content/ComponentName;)J
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 294
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/packetfilter/PacketFilter;->removeAllPacketFilterRulesFromList(Landroid/content/ComponentName;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public removeAllPacketFilterRulesFromList(Landroid/content/ComponentName;I)J
    .locals 9
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 282
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter;->checkUserPermission()V

    .line 283
    if-nez p1, :cond_0

    .line 284
    const-wide/16 v2, -0x1

    .line 290
    :goto_0
    return-wide v2

    .line 286
    :cond_0
    new-instance v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    const/4 v2, 0x2

    move-object v1, p0

    move-object v3, p1

    move v6, v5

    move v7, p2

    move-object v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;ILandroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;IIILcom/sonymobile/packetfilter/PacketFilter$1;)V

    .line 288
    .local v0, "operation":Lcom/sonymobile/packetfilter/PacketFilter$Operation;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAllPacketFilterRulesFromList operation. name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 290
    invoke-direct {p0, v0}, Lcom/sonymobile/packetfilter/PacketFilter;->addOperation(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 1402
    const-string v2, "<<packet filter thread start>>"

    invoke-static {v2}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1405
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mOperations:Ljava/util/LinkedList;

    monitor-enter v3

    .line 1406
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mOperations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1407
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1427
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread finish :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1428
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mThread:Ljava/lang/Thread;

    .line 1429
    return-void

    .line 1409
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mOperations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .line 1410
    .local v0, "current":Lcom/sonymobile/packetfilter/PacketFilter$Operation;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process an operation mOid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$2600(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1413
    # invokes: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->process()I
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$3800(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)I

    move-result v1

    .line 1414
    .local v1, "result":I
    if-nez v1, :cond_1

    .line 1416
    # invokes: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->startTimer()V
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$3900(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)V

    .line 1417
    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter;->mConnector:Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;

    # invokes: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->executeImpl(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)I
    invoke-static {v2, v0}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;->access$4000(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterNativeDaemonConnector;Lcom/sonymobile/packetfilter/PacketFilter$Operation;)I

    move-result v1

    .line 1418
    # invokes: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->stopTimer()V
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$4100(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)V

    .line 1419
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimeOut:Z
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$2300(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1420
    const-string v2, "thread deprecated"

    invoke-static {v2}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 1410
    .end local v0    # "current":Lcom/sonymobile/packetfilter/PacketFilter$Operation;
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1425
    .restart local v0    # "current":Lcom/sonymobile/packetfilter/PacketFilter$Operation;
    .restart local v1    # "result":I
    :cond_1
    # invokes: Lcom/sonymobile/packetfilter/PacketFilter$Operation;->finish(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->access$2700(Lcom/sonymobile/packetfilter/PacketFilter$Operation;I)V

    goto :goto_0
.end method

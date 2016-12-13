.class Lcom/sonymobile/packetfilter/PacketFilter$Operation;
.super Ljava/lang/Object;
.source "PacketFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/packetfilter/PacketFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Operation"
.end annotation


# static fields
.field private static final COMMAND_DROPALL_HTTP:I = 0x7

.field private static final COMMAND_DROPALL_TCP:I = 0x8

.field private static final COMMAND_DROPALL_UDP:I = 0x6

.field private static final COMMAND_MATCH_HTTP_ASC:I = 0x4

.field private static final COMMAND_MATCH_HTTP_ASC_PATH:I = 0x5

.field private static final COMMAND_MATCH_TCP_IP:I = 0x2

.field private static final COMMAND_MATCH_TCP_IP_RANGE:I = 0x3

.field private static final COMMAND_MATCH_UDP:I = 0x1

.field private static final COMMAND_MATCH_UID:I = 0x0

.field private static final HEADER_UID:Ljava/lang/String; = "-m owner --uid-owner "

.field private static final OPERATION_ADD:I = 0x1

.field private static final OPERATION_NAME_NEW:Ljava/lang/String; = "newChainCmd"

.field private static final OPERATION_NAME_REMOVE:Ljava/lang/String; = "removeChainCmd"

.field private static final OPERATION_NAME_UPDATE:Ljava/lang/String; = "updateChainCmd"

.field private static final OPERATION_NEW_CHAIN:I = 0x4

.field private static final OPERATION_REMOVE_ALL:I = 0x2

.field private static final OPERATION_REMOVE_CHAIN:I = 0x5

.field private static final OPERATION_UPDATE:I = 0x3

.field private static final RESTORE_COMMIT:Ljava/lang/String; = "COMMIT\n"

.field private static final RESTORE_FILTER:Ljava/lang/String; = "*filter\n"

.field private static final RESTORE_NAME_LEFT:Ljava/lang/String; = ": "

.field private static final RESTORE_NAME_RIGHT:Ljava/lang/String; = " - [0:0]\n"

.field private static final VALUE_TARGET_ACCEPT:Ljava/lang/String; = "ACCEPT"

.field private static final VALUE_TARGET_DROP:Ljava/lang/String; = "DROP"


# instance fields
.field private mChain:Ljava/lang/String;

.field private mClient:Landroid/content/ComponentName;

.field private mCommandFormatStr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOid:J

.field private mOperationName:Ljava/lang/String;

.field private mOperationType:I

.field private mOrder:I

.field private mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

.field private mScriptFullpath:Ljava/lang/String;

.field private mScriptFullpathIPv6:Ljava/lang/String;

.field private mTable:Ljava/lang/String;

.field private mTarget:I

.field private mTimeOut:Z

.field private mTimer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/sonymobile/packetfilter/PacketFilter;


# direct methods
.method private constructor <init>(Lcom/sonymobile/packetfilter/PacketFilter;ILandroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;III)V
    .locals 4
    .param p2, "operate"    # I
    .param p3, "client"    # Landroid/content/ComponentName;
    .param p4, "rules"    # [Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    .param p5, "target"    # I
    .param p6, "order"    # I
    .param p7, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 490
    iput-object p1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    .line 439
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const-string v1, "-A %s %s -p tcp -j %s\n"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "-A %s -p udp --dport 53 -m string --hex-string %s --algo bm -j %s\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "-A %s %s -p tcp -d %s -j %s\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "-A %s %s -p tcp -m iprange --dst-range %s -j %s\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "-A %s %s -p tcp ! --dport 443 --tcp-flags PSH PSH -m string --string %s --algo bm -j %s\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 447
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "-A %s %s -p tcp ! --dport 443 --tcp-flags PSH PSH -m string --string %s --algo bm -m string --string %s --algo bm -j %s\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "-A %s -p udp --dport 53 -j DROP\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "-A %s %s -p tcp ! --dport 443 --tcp-flags PSH PSH -j DROP\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 452
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "-A %s %s -p tcp -j DROP\n"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 474
    iput-boolean v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimeOut:Z

    .line 477
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimer:Ljava/util/Timer;

    .line 491
    iput p2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    .line 492
    if-eqz p3, :cond_0

    .line 494
    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    .line 497
    :cond_0
    if-eqz p4, :cond_1

    invoke-direct {p0, p4, p7}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->getExtendedRule([Lcom/sonymobile/packetfilter/PacketFilterRuleBase;I)[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .line 498
    iput p5, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTarget:I

    .line 499
    iput p6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOrder:I

    .line 500
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mChainName:Ljava/lang/String;
    invoke-static {p1}, Lcom/sonymobile/packetfilter/PacketFilter;->access$600(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mChain:Ljava/lang/String;

    .line 501
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mRoot:Ljava/lang/String;
    invoke-static {p1}, Lcom/sonymobile/packetfilter/PacketFilter;->access$700(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTable:Ljava/lang/String;

    .line 502
    return-void

    .line 497
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/sonymobile/packetfilter/PacketFilter;ILandroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;IIILcom/sonymobile/packetfilter/PacketFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/content/ComponentName;
    .param p4, "x3"    # [Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # Lcom/sonymobile/packetfilter/PacketFilter$1;

    .prologue
    .line 405
    invoke-direct/range {p0 .. p7}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;ILandroid/content/ComponentName;[Lcom/sonymobile/packetfilter/PacketFilterRuleBase;III)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimeOut:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sonymobile/packetfilter/PacketFilter$Operation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;
    .param p1, "x1"    # Z

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimeOut:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/sonymobile/packetfilter/PacketFilter$Operation;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;
    .param p1, "x1"    # J

    .prologue
    .line 405
    iput-wide p1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/sonymobile/packetfilter/PacketFilter$Operation;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;
    .param p1, "x1"    # I

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->finish(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->process()I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->startTimer()V

    return-void
.end method

.method static synthetic access$4100(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->stopTimer()V

    return-void
.end method

.method static synthetic access$4200(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->check()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mChain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mScriptFullpath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mScriptFullpathIPv6:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/packetfilter/PacketFilter$Operation;

    .prologue
    .line 405
    iget v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    return v0
.end method

.method private add(Ljava/util/HashMap;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sonymobile/packetfilter/PacketFilter$ClientData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "clientDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 610
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    .line 611
    .local v0, "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    if-nez v0, :cond_2

    .line 612
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add clientDataMap.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    .line 614
    const/4 v3, -0x2

    .line 644
    :cond_0
    :goto_0
    return v3

    .line 616
    :cond_1
    new-instance v0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    .end local v0    # "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    invoke-direct {v0, v4, v7}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;Lcom/sonymobile/packetfilter/PacketFilter$1;)V

    .line 617
    .restart local v0    # "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    :goto_1
    iget v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOrder:I

    if-nez v4, :cond_3

    .line 626
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$400(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTarget:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 631
    .local v1, "ruleList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    :goto_2
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    .line 634
    .local v2, "temp_size":I
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 636
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_4

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add listSize over: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    .line 638
    const/4 v3, -0x3

    goto :goto_0

    .line 620
    .end local v1    # "ruleList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    .end local v2    # "temp_size":I
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    new-instance v5, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    invoke-direct {v5, v6, v0, v7}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;Lcom/sonymobile/packetfilter/PacketFilter$1;)V

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    check-cast v0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    .restart local v0    # "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    goto :goto_1

    .line 628
    :cond_3
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$500(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTarget:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .restart local v1    # "ruleList":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    goto :goto_2

    .line 640
    .restart local v2    # "temp_size":I
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add repeated rule: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private check()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 533
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check mOperationType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 534
    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    if-ne v6, v5, :cond_2

    .line 535
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .local v0, "arr$":[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 536
    .local v3, "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    # invokes: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->checkRule()Z
    invoke-static {v3}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$800(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 537
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "R_RULE_UNSUPPORT: check OPERATION mOperationType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    .line 552
    .end local v0    # "arr$":[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    :goto_1
    return v4

    .line 535
    .restart local v0    # "arr$":[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    :cond_1
    move v4, v5

    .line 542
    goto :goto_1

    .line 543
    .end local v0    # "arr$":[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_2
    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    move v4, v5

    .line 544
    goto :goto_1

    .line 545
    :cond_3
    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    move v4, v5

    .line 546
    goto :goto_1

    .line 547
    :cond_4
    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_5

    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    :cond_5
    move v4, v5

    .line 549
    goto :goto_1

    .line 551
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "R_OP_UNDEFINE: check OPERATION mOperationType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private combineRules(Ljava/util/HashMap;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sonymobile/packetfilter/PacketFilter$ClientData;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "clientDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    const/4 v4, 0x5

    const/4 v0, -0x6

    const/4 v1, 0x0

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "combine mOperationType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 564
    iget v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 565
    invoke-direct {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->add(Ljava/util/HashMap;)I

    move-result v0

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 566
    :cond_1
    iget v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 567
    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 571
    iput v4, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    :cond_2
    :goto_1
    move v0, v1

    .line 590
    goto :goto_0

    .line 577
    :cond_3
    iget v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 578
    invoke-direct {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->updateCheck(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 579
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mUidManager:Lcom/sonymobile/packetfilter/PacketFilter$UidManager;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->access$900(Lcom/sonymobile/packetfilter/PacketFilter;)Lcom/sonymobile/packetfilter/PacketFilter$UidManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->pop(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 583
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No need to update mPackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    aget-object v1, v3, v1

    iget-object v1, v1, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_5
    iget v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    if-ne v0, v4, :cond_2

    .line 587
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto :goto_1
.end method

.method private createScriptFile(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "ipVersion"    # I
    .param p2, "insertCommands"    # Ljava/lang/String;
    .param p3, "appendCommands"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 762
    const-string v1, ""

    .line 763
    .local v1, "fullpath":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 764
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/system/apfd/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mChainName:Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/packetfilter/PacketFilter;->access$600(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_updatechain.script"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mScriptFullpath:Ljava/lang/String;

    .line 765
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mScriptFullpath:Ljava/lang/String;

    .line 770
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "script file location: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 772
    const/4 v2, 0x0

    .line 774
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/system/apfd/"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 775
    .local v4, "scriptDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 776
    .local v5, "scriptFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 778
    const-string v7, "script file directory is not existed"

    invoke-static {v7}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    if-eqz v2, :cond_0

    .line 801
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 807
    .end local v4    # "scriptDir":Ljava/io/File;
    .end local v5    # "scriptFile":Ljava/io/File;
    :cond_0
    :goto_1
    return v6

    .line 767
    .end local v2    # "fw":Ljava/io/FileWriter;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/system/apfd/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mChainName:Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/packetfilter/PacketFilter;->access$600(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_updatechainipv6.script"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mScriptFullpathIPv6:Ljava/lang/String;

    .line 768
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mScriptFullpathIPv6:Ljava/lang/String;

    goto :goto_0

    .line 803
    .restart local v2    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "scriptDir":Ljava/io/File;
    .restart local v5    # "scriptFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "closing io fails due to IOException.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_1

    .line 781
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 782
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-nez v7, :cond_3

    .line 783
    const-string v7, "create script file failed"

    invoke-static {v7}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 800
    if-eqz v2, :cond_0

    .line 801
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 803
    :catch_1
    move-exception v0

    .line 804
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "closing io fails due to IOException.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_1

    .line 788
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_4
    const-string v7, "change group access permision of the script file to r/w/x"

    invoke-static {v7}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 789
    const/16 v7, 0x1f8

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v5, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 792
    :cond_4
    new-instance v3, Ljava/io/FileWriter;

    const/4 v7, 0x0

    invoke-direct {v3, v5, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 793
    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    :try_start_5
    invoke-direct {p0, p2, p3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->toScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 800
    if-eqz v3, :cond_5

    .line 801
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 807
    :cond_5
    :goto_2
    const/4 v6, 0x1

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto/16 :goto_1

    .line 803
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    .line 804
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "closing io fails due to IOException.\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_2

    .line 795
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v4    # "scriptDir":Ljava/io/File;
    .end local v5    # "scriptFile":Ljava/io/File;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :catch_3
    move-exception v0

    .line 796
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writing fails due to IOException.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 800
    if-eqz v2, :cond_0

    .line 801
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    .line 803
    :catch_4
    move-exception v0

    .line 804
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "closing io fails due to IOException.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 799
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 800
    :goto_4
    if-eqz v2, :cond_6

    .line 801
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 805
    :cond_6
    :goto_5
    throw v6

    .line 803
    :catch_5
    move-exception v0

    .line 804
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "closing io fails due to IOException.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    goto :goto_5

    .line 799
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "scriptDir":Ljava/io/File;
    .restart local v5    # "scriptFile":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 795
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method private feedback(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    .line 1134
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sonymobile.enterprise.intent.action.PACKETFILTER_RESULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1136
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1137
    const-string v1, "com.sonymobile.enterprise.extra.PACKET_FILTER_EXTRA_RESULT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1138
    const-string v1, "com.sonymobile.enterprise.extra.PACKET_FILTER_EXTRA_ID"

    iget-wide v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1141
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->access$2200(Lcom/sonymobile/packetfilter/PacketFilter;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1142
    return-void
.end method

.method private finish(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish, result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimeOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1117
    iget v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    if-eqz p1, :cond_3

    iget v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1122
    :cond_2
    const-string v0, "result is set to OK since it\'s a REMOVE_CHAIN/REMOVE_ALL operation"

    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1123
    const/4 p1, 0x0

    .line 1125
    :cond_3
    if-nez p1, :cond_4

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userhandle current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1127
    invoke-direct {p0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->sync()V

    .line 1129
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->feedback(I)V

    goto :goto_0
.end method

.method private formIptablesDropAllItems(ILjava/lang/String;ILjava/util/HashSet;)Ljava/lang/String;
    .locals 11
    .param p1, "command"    # I
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "target"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p4, "userIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const v10, 0x186a0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1088
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1089
    .local v2, "cmds":Ljava/lang/StringBuffer;
    if-eqz p4, :cond_1

    .line 1090
    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1091
    .local v5, "userId":I
    const-string v4, ""

    .line 1092
    .local v4, "targetUid":Ljava/lang/String;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1094
    mul-int v6, v10, v5

    add-int/lit16 v1, v6, 0x2710

    .line 1096
    .local v1, "appUidMin":I
    mul-int v6, v10, v5

    add-int/lit16 v0, v6, 0x4e1f

    .line 1098
    .local v0, "appUidMax":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-m owner --uid-owner "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1100
    .end local v0    # "appUidMax":I
    .end local v1    # "appUidMin":I
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1103
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "targetUid":Ljava/lang/String;
    .end local v5    # "userId":I
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1106
    :goto_1
    return-object v6

    .line 1105
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drop all items: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;
    .locals 11
    .param p1, "command"    # I
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "target"    # I
    .param p4, "rule"    # Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .prologue
    .line 1027
    const-string v2, ""

    .line 1028
    .local v2, "cmd":Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 1029
    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mUidManager:Lcom/sonymobile/packetfilter/PacketFilter$UidManager;
    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->access$900(Lcom/sonymobile/packetfilter/PacketFilter;)Lcom/sonymobile/packetfilter/PacketFilter$UidManager;

    move-result-object v6

    iget-object v7, p4, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1030
    .local v5, "uid":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1032
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUserId:I
    invoke-static {p4}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1600(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # invokes: Lcom/sonymobile/packetfilter/PacketFilter;->getCurrentUser()I
    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1800(Lcom/sonymobile/packetfilter/PacketFilter;)I

    move-result v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1036
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v4, ""

    .line 1037
    .local v4, "targetUid":Ljava/lang/String;
    :goto_1
    if-nez p3, :cond_5

    const-string v3, "DROP"

    .line 1039
    .local v3, "dropOrAccept":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUserId:I
    invoke-static {p4}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1600(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 1041
    const v6, 0x186a0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUserId:I
    invoke-static {p4}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1600(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I

    move-result v7

    mul-int/2addr v6, v7

    add-int/lit16 v1, v6, 0x2710

    .line 1043
    .local v1, "appUidMin":I
    const v6, 0x186a0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUserId:I
    invoke-static {p4}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1600(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I

    move-result v7

    mul-int/2addr v6, v7

    add-int/lit16 v0, v6, 0x4e1f

    .line 1045
    .local v0, "appUidMax":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-m owner --uid-owner "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1048
    .end local v0    # "appUidMax":I
    .end local v1    # "appUidMin":I
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1073
    .end local v3    # "dropOrAccept":Ljava/lang/String;
    .end local v4    # "targetUid":Ljava/lang/String;
    .end local v5    # "uid":Ljava/lang/String;
    :cond_2
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "a command item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 1074
    return-object v2

    .line 1032
    .restart local v5    # "uid":Ljava/lang/String;
    :cond_3
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUserId:I
    invoke-static {p4}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1600(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I

    move-result v6

    goto :goto_0

    .line 1036
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-m owner --uid-owner "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1037
    .restart local v4    # "targetUid":Ljava/lang/String;
    :cond_5
    const-string v3, "ACCEPT"

    goto :goto_2

    .line 1052
    .restart local v3    # "dropOrAccept":Ljava/lang/String;
    :pswitch_0
    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;
    invoke-static {p4}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1900(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1054
    goto :goto_3

    .line 1058
    :pswitch_1
    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;
    invoke-static {p4}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1900(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPath:Ljava/lang/String;
    invoke-static {p4}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$2000(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1060
    goto :goto_3

    .line 1062
    :pswitch_2
    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mHost:Ljava/lang/String;
    invoke-static {p4}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1900(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/sonymobile/packetfilter/PacketFilter;->toHexString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/sonymobile/packetfilter/PacketFilter;->access$2100(Lcom/sonymobile/packetfilter/PacketFilter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1064
    goto/16 :goto_3

    .line 1066
    :pswitch_3
    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mCommandFormatStr:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1068
    goto/16 :goto_3

    .line 1048
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getExtendedRule([Lcom/sonymobile/packetfilter/PacketFilterRuleBase;I)[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .locals 5
    .param p1, "rules"    # [Lcom/sonymobile/packetfilter/PacketFilterRuleBase;
    .param p2, "userId"    # I

    .prologue
    .line 508
    array-length v2, p1

    new-array v1, v2, [Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .line 509
    .local v1, "rulesEx":[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 510
    new-instance v2, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    iget-object v3, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    aget-object v4, p1, v0

    invoke-direct {v2, v3, v4, p2}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;-><init>(Lcom/sonymobile/packetfilter/PacketFilter;Lcom/sonymobile/packetfilter/PacketFilterRuleBase;I)V

    aput-object v2, v1, v0

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_0
    return-object v1
.end method

.method private process()I
    .locals 15

    .prologue
    const/4 v11, -0x6

    const/4 v14, 0x1

    const/4 v12, 0x0

    .line 683
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "process operation: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 685
    const/4 v7, 0x0

    .line 686
    .local v7, "insertCommands":Ljava/lang/String;
    const/4 v1, 0x0

    .line 690
    .local v1, "appendCommands":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mClientDataMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1000(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/util/HashMap;

    move-result-object v13

    monitor-enter v13

    .line 691
    :try_start_0
    iget-object v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mClientDataMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1000(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 692
    .local v3, "clientDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    invoke-direct {p0, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->combineRules(Ljava/util/HashMap;)I

    move-result v9

    .line 694
    .local v9, "result":I
    if-eqz v9, :cond_0

    .line 695
    const-string v10, "combine fail"

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    .line 750
    .end local v9    # "result":I
    :goto_0
    return v9

    .line 692
    .end local v3    # "clientDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 698
    .restart local v3    # "clientDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    .restart local v9    # "result":I
    :cond_0
    iget v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v13, 0x4

    if-ne v10, v13, :cond_1

    .line 699
    const-string v10, "newChainCmd"

    iput-object v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationName:Ljava/lang/String;

    :goto_1
    move v9, v12

    .line 750
    goto :goto_0

    .line 700
    :cond_1
    iget v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    if-eq v10, v14, :cond_2

    iget v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v13, 0x2

    if-eq v10, v13, :cond_2

    iget v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v13, 0x3

    if-ne v10, v13, :cond_6

    .line 702
    :cond_2
    const-string v10, "updateChainCmd"

    iput-object v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationName:Ljava/lang/String;

    .line 703
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 704
    .local v8, "insertDropRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 705
    .local v6, "insertAcceptRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 706
    .local v2, "appendDropRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 709
    .local v0, "appendAcceptRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mClientDataMap = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mClientDataMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1000(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 710
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "clientDataMap = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 712
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$400(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 713
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$400(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 714
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$500(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 715
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$500(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 719
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v12, v8, v12, v12}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->toCommands(ILjava/util/HashSet;II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v12, v6, v14, v12}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->toCommands(ILjava/util/HashSet;II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 721
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v12, v2, v12, v14}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->toCommands(ILjava/util/HashSet;II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v12, v0, v14, v14}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->toCommands(ILjava/util/HashSet;II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 724
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertCommands cmds(IPv4):\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 725
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appendCommands cmds(IPv4):\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 726
    invoke-direct {p0, v12, v7, v1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->createScriptFile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    move v9, v11

    .line 727
    goto/16 :goto_0

    .line 731
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v14, v8, v12, v12}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->toCommands(ILjava/util/HashSet;II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v14, v6, v14, v12}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->toCommands(ILjava/util/HashSet;II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 733
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v14, v2, v12, v14}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->toCommands(ILjava/util/HashSet;II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v14, v0, v14, v14}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->toCommands(ILjava/util/HashSet;II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 736
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertCommands cmds(IPv6):\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 737
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appendCommands cmds(IPv6):\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 738
    invoke-direct {p0, v14, v7, v1}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->createScriptFile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    move v9, v11

    .line 739
    goto/16 :goto_0

    :cond_5
    move v9, v12

    .line 742
    goto/16 :goto_0

    .line 744
    .end local v0    # "appendAcceptRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    .end local v2    # "appendDropRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "insertAcceptRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    .end local v8    # "insertDropRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    :cond_6
    iget v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    const/4 v13, 0x5

    if-ne v10, v13, :cond_7

    .line 745
    const-string v10, "removeChainCmd"

    iput-object v10, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationName:Ljava/lang/String;

    goto/16 :goto_1

    .line 747
    :cond_7
    const-string v10, "unexpected PacketFilterChain operation type"

    invoke-static {v10}, Lcom/sonymobile/packetfilter/PacketFilter;->logError(Ljava/lang/String;)V

    move v9, v11

    .line 748
    goto/16 :goto_0
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation$1;-><init>(Lcom/sonymobile/packetfilter/PacketFilter$Operation;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1159
    return-void
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1163
    return-void
.end method

.method private sync()V
    .locals 2

    .prologue
    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync mOperationType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mClientDataMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1000(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mClientDataMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1000(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->combineRules(Ljava/util/HashMap;)I

    .line 600
    monitor-exit v1

    .line 601
    return-void

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private toCommands(ILjava/util/HashSet;II)Ljava/lang/String;
    .locals 22
    .param p1, "ipVersion"    # I
    .param p3, "target"    # I
    .param p4, "orderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 848
    .local p2, "rules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 849
    .local v17, "matchUIDs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 850
    .local v16, "matchUDPs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 851
    .local v15, "matchTCPIPs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 856
    .local v14, "matchHTTPURLs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 860
    .local v5, "acceptUIDRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 861
    .local v4, "acceptUDPRules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    const/4 v9, 0x0

    .line 862
    .local v9, "dropAllHTTPFlag":Z
    const/4 v11, 0x0

    .line 863
    .local v11, "dropAllTCPFlag":Z
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 864
    .local v8, "cmds":Ljava/lang/StringBuffer;
    if-nez p4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    move-object/from16 v20, v0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mInsertChainName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1300(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v6

    .line 867
    .local v6, "chain":Ljava/lang/String;
    :goto_0
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 868
    .local v12, "dropAllTCPUserIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 871
    .local v10, "dropAllHTTPUserIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .line 872
    .local v18, "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    move-object/from16 v20, v0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mUidManager:Lcom/sonymobile/packetfilter/PacketFilter$UidManager;
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/packetfilter/PacketFilter;->access$900(Lcom/sonymobile/packetfilter/PacketFilter;)Lcom/sonymobile/packetfilter/PacketFilter$UidManager;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/sonymobile/packetfilter/PacketFilter$UidManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 873
    .local v19, "uid":Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 874
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1500(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 875
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUserId:I
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1600(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 882
    :cond_1
    :goto_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 883
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 884
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1500(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 885
    const/4 v11, 0x1

    goto :goto_1

    .line 864
    .end local v6    # "chain":Ljava/lang/String;
    .end local v10    # "dropAllHTTPUserIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v12    # "dropAllTCPUserIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v18    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .end local v19    # "uid":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    move-object/from16 v20, v0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mAppendChainName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1400(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 877
    .restart local v6    # "chain":Ljava/lang/String;
    .restart local v10    # "dropAllHTTPUserIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v12    # "dropAllTCPUserIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v18    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .restart local v19    # "uid":Ljava/lang/String;
    :cond_3
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUserId:I
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1600(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 887
    :cond_4
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 893
    :cond_5
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1500(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I

    move-result v20

    packed-switch v20, :pswitch_data_0

    goto/16 :goto_1

    .line 965
    :pswitch_0
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 895
    :pswitch_1
    const/16 v20, 0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 896
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 902
    :pswitch_2
    if-nez p1, :cond_0

    .line 903
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 908
    :pswitch_3
    if-nez p1, :cond_0

    .line 909
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 915
    :pswitch_4
    if-nez p3, :cond_7

    .line 919
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    move-object/from16 v20, v0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mBlockStrength:I
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1700(Lcom/sonymobile/packetfilter/PacketFilter;)I

    move-result v20

    if-nez v20, :cond_6

    .line 920
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 922
    :cond_6
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 926
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    move-object/from16 v20, v0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mBlockStrength:I
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1700(Lcom/sonymobile/packetfilter/PacketFilter;)I

    move-result v20

    if-nez v20, :cond_8

    .line 927
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_8
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 932
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 937
    :pswitch_5
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 939
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    move-object/from16 v20, v0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mBlockStrength:I
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1700(Lcom/sonymobile/packetfilter/PacketFilter;)I

    move-result v20

    if-nez v20, :cond_9

    .line 942
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 944
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 946
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 952
    :pswitch_6
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1500(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I

    move-result v20

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    if-nez p1, :cond_0

    :cond_a
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mUrlType:I
    invoke-static/range {v18 .. v18}, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->access$1500(Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)I

    move-result v20

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    const/16 v20, 0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 957
    :cond_b
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 959
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 960
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 972
    .end local v18    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .end local v19    # "uid":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "cmd":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 973
    .end local v7    # "cmd":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .restart local v7    # "cmd":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 974
    .end local v7    # "cmd":Ljava/lang/String;
    :cond_e
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .restart local v7    # "cmd":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 975
    .end local v7    # "cmd":Ljava/lang/String;
    :cond_f
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .restart local v7    # "cmd":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 978
    .end local v7    # "cmd":Ljava/lang/String;
    :cond_10
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->size()I

    move-result v20

    if-lez v20, :cond_19

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    move-object/from16 v20, v0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mBlockStrength:I
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1700(Lcom/sonymobile/packetfilter/PacketFilter;)I

    move-result v20

    if-nez v20, :cond_11

    .line 981
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .line 982
    .restart local v18    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v7

    .line 983
    .restart local v7    # "cmd":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 989
    .end local v7    # "cmd":Ljava/lang/String;
    .end local v18    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    :cond_11
    invoke-virtual {v15}, Ljava/util/HashSet;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_12

    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_12

    if-eqz v9, :cond_13

    .line 991
    :cond_12
    const/16 v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    invoke-direct {v0, v1, v6, v2, v10}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesDropAllItems(ILjava/lang/String;ILjava/util/HashSet;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 994
    :cond_13
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_14

    if-eqz v11, :cond_17

    .line 996
    :cond_14
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_15
    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .line 997
    .restart local v18    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesItem(ILjava/lang/String;ILcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;)Ljava/lang/String;

    move-result-object v7

    .line 999
    .restart local v7    # "cmd":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_15

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 1003
    .end local v7    # "cmd":Ljava/lang/String;
    .end local v18    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    :cond_16
    const/16 v20, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    invoke-direct {v0, v1, v6, v2, v12}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesDropAllItems(ILjava/lang/String;ILjava/util/HashSet;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1007
    :cond_17
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_18

    invoke-virtual {v15}, Ljava/util/HashSet;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_18

    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    move-object/from16 v20, v0

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mBlockStrength:I
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1700(Lcom/sonymobile/packetfilter/PacketFilter;)I

    move-result v20

    if-nez v20, :cond_19

    .line 1010
    const/16 v20, 0x6

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p3

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->formIptablesDropAllItems(ILjava/lang/String;ILjava/util/HashSet;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1013
    :cond_19
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20

    .line 893
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method private toScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "insertCommands"    # Ljava/lang/String;
    .param p2, "appendCommands"    # Ljava/lang/String;

    .prologue
    .line 818
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 819
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "*filter\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 820
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 821
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mInsertChainName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1300(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    const-string v1, " - [0:0]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 823
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 826
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 827
    iget-object v1, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->this$0:Lcom/sonymobile/packetfilter/PacketFilter;

    # getter for: Lcom/sonymobile/packetfilter/PacketFilter;->mAppendChainName:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/packetfilter/PacketFilter;->access$1400(Lcom/sonymobile/packetfilter/PacketFilter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 828
    const-string v1, " - [0:0]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 829
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 832
    const-string v1, "COMMIT\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 833
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateCheck(Ljava/util/HashMap;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sonymobile/packetfilter/PacketFilter$ClientData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "clientDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sonymobile/packetfilter/PacketFilter$ClientData;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 654
    iget-object v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 655
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;

    .line 656
    .local v0, "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 658
    .local v4, "rulesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$400(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 659
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->insertRuleLists:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$400(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 660
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$500(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 661
    # getter for: Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->appendRuleLists:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sonymobile/packetfilter/PacketFilter$ClientData;->access$500(Lcom/sonymobile/packetfilter/PacketFilter$ClientData;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 662
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .line 663
    .local v3, "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    iget-object v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    iget-object v8, v3, Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 671
    .end local v0    # "cd":Lcom/sonymobile/packetfilter/PacketFilter$ClientData;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .end local v4    # "rulesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;>;"
    :goto_0
    return v7

    :cond_2
    move v7, v6

    .line 668
    goto :goto_0

    .line 670
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCheck all uid: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/packetfilter/PacketFilter;->logDebug(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_1
    move v7, v5

    goto :goto_0

    :cond_4
    move v5, v7

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 517
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 518
    .local v4, "rules":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    if-eqz v5, :cond_0

    .line 519
    iget-object v0, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mRules:[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;

    .local v0, "arr$":[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 520
    .local v3, "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    .end local v0    # "arr$":[Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "rule":Lcom/sonymobile/packetfilter/PacketFilter$PacketFilterRuleEx;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOperationType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mOperationType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mClient:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mClient:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonymobile/packetfilter/PacketFilter$Operation;->mTarget:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRules: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.class public final Landroid/net/wifi/WifiEnterpriseConfig$Eap;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eap"
.end annotation


# static fields
.field public static final AKA:I = 0x5

.field public static final AKA_EXT:I = 0x8

.field public static final AKA_PRIME:I = 0x6

.field public static final AKA_PRIME_EXT:I = 0x9

.field static final DUAL_SIM_SUFFIX:Ljava/lang/String; = "_EX"

.field static final FIRST_SIM_INDEX:Ljava/lang/String; = "1"

.field public static final NONE:I = -0x1

.field public static final PEAP:I = 0x0

.field public static final PWD:I = 0x3

.field static final SECOND_SIM_INDEX:Ljava/lang/String; = "2"

.field public static final SIM:I = 0x4

.field public static final SIM_EXT:I = 0x7

.field public static final TLS:I = 0x1

.field public static final TTLS:I = 0x2

.field public static final strings:[Ljava/lang/String;

.field static final strings_with_eap_simaka:[Ljava/lang/String;

.field static final strings_with_somc_additions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PEAP"

    aput-object v1, v0, v3

    const-string v1, "TLS"

    aput-object v1, v0, v4

    const-string v1, "TTLS"

    aput-object v1, v0, v5

    const-string v1, "PWD"

    aput-object v1, v0, v6

    const-string v1, "SIM"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "AKA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AKA\'"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    .line 270
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PEAP"

    aput-object v1, v0, v3

    const-string v1, "TLS"

    aput-object v1, v0, v4

    const-string v1, "TTLS"

    aput-object v1, v0, v5

    const-string v1, "PWD"

    aput-object v1, v0, v6

    const-string v1, "SIM"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "AKA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AKA\'"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SIM_EX"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AKA_EX"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AKA\'_EX"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings_with_somc_additions:[Ljava/lang/String;

    .line 274
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "SIM"

    aput-object v1, v0, v3

    const-string v1, "AKA"

    aput-object v1, v0, v4

    const-string v1, "AKA\'"

    aput-object v1, v0, v5

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings_with_eap_simaka:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/android/internal/app/ResolverActivity$ResolverComparatorWithWeights;
.super Lcom/android/internal/app/ResolverComparator;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolverComparatorWithWeights"
.end annotation


# instance fields
.field private final mPriorityWeightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "referrerPackage"    # Ljava/lang/String;

    .prologue
    .line 1804
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolverComparatorWithWeights;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 1805
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1801
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverComparatorWithWeights;->mPriorityWeightMap:Ljava/util/Map;

    .line 1806
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolverComparatorWithWeights;->loadPriorityWeights()V

    .line 1807
    return-void
.end method

.method private loadPriorityWeights()V
    .locals 11

    .prologue
    .line 1836
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity$ResolverComparatorWithWeights;->mPriorityWeightMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 1837
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity$ResolverComparatorWithWeights;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v9}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x107000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1844
    .local v7, "priorityWeights":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 1845
    .local v2, "entry":Ljava/lang/String;
    const/16 v9, 0x2c

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1846
    .local v5, "n":I
    if-ltz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v5, v9, :cond_1

    .line 1847
    :cond_0
    const-string v9, "ResolverActivity"

    const-string v10, "Failed to load weight prioritization: Malformed weight entry"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1850
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1852
    .local v6, "name":Ljava/lang/String;
    add-int/lit8 v9, v5, 0x1

    :try_start_0
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    .line 1853
    .local v8, "weight":Ljava/lang/Float;
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity$ResolverComparatorWithWeights;->mPriorityWeightMap:Ljava/util/Map;

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1854
    .end local v8    # "weight":Ljava/lang/Float;
    :catch_0
    move-exception v1

    .line 1855
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v9, "ResolverActivity"

    const-string v10, "Failed to load weight prioritization: Bad weight"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1858
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "entry":Ljava/lang/String;
    .end local v5    # "n":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 7
    .param p1, "lhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "rhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1811
    invoke-virtual {p1, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1812
    .local v1, "lhs":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p2, v5}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1815
    .local v3, "rhs":Landroid/content/pm/ResolveInfo;
    iget v5, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_1

    .line 1831
    :cond_0
    :goto_0
    return v4

    .line 1818
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolverComparatorWithWeights;->mPriorityWeightMap:Ljava/util/Map;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 1819
    .local v2, "rWeight":Ljava/lang/Float;
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolverComparatorWithWeights;->mPriorityWeightMap:Ljava/util/Map;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1821
    .local v0, "lWeight":Ljava/lang/Float;
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1823
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    goto :goto_0

    .line 1824
    :cond_2
    if-nez v2, :cond_0

    .line 1827
    if-eqz v0, :cond_3

    .line 1829
    const/4 v4, -0x1

    goto :goto_0

    .line 1831
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1800
    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$ResolverComparatorWithWeights;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result v0

    return v0
.end method

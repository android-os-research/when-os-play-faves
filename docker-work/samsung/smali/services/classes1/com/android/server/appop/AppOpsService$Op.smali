.class public final Lcom/android/server/appop/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Op"
.end annotation


# instance fields
.field public final mAttributions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/appop/AppOpsService$AttributedOp;",
            ">;"
        }
    .end annotation
.end field

.field public mSettedUid:I

.field public mode:I

.field public op:I

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public uid:I

.field public final uidState:Lcom/android/server/appop/AppOpsService$UidState;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I
    .registers 1

    iget p0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmode(Lcom/android/server/appop/AppOpsService$Op;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/AppOpsService$Op;->getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;II)V
    .registers 7

    .line 1513
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1511
    new-instance p1, Landroid/util/ArrayMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    .line 1514
    iput p4, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    .line 1515
    iput p5, p0, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    .line 1516
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    .line 1517
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1518
    invoke-static {p4}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return-void
.end method


# virtual methods
.method public createEntryLocked()Landroid/app/AppOpsManager$OpEntry;
    .registers 6

    .line 1551
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1553
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_28

    .line 1556
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    .line 1557
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$AttributedOp;

    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService$AttributedOp;->createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v4

    .line 1556
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1560
    :cond_28
    new-instance v0, Landroid/app/AppOpsManager$OpEntry;

    iget v2, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget p0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    invoke-direct {v0, v2, p0, v1}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    return-object v0
.end method

.method public createSingleAttributionEntryLocked(Ljava/lang/String;)Landroid/app/AppOpsManager$OpEntry;
    .registers 6

    .line 1564
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1566
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_36

    .line 1568
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1569
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    .line 1570
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$AttributedOp;

    invoke-virtual {v0}, Lcom/android/server/appop/AppOpsService$AttributedOp;->createAttributedOpEntryLocked()Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v0

    .line 1569
    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1575
    :cond_36
    :goto_36
    new-instance p1, Landroid/app/AppOpsManager$OpEntry;

    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget p0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    invoke-direct {p1, v0, p0, v1}, Landroid/app/AppOpsManager$OpEntry;-><init>(IILjava/util/Map;)V

    return-object p1
.end method

.method public evalMode()I
    .registers 3

    .line 1526
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget p0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result p0

    return p0
.end method

.method public getMode()I
    .registers 1

    .line 1522
    iget p0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return p0
.end method

.method public final getOrCreateAttribution(Lcom/android/server/appop/AppOpsService$Op;Ljava/lang/String;)Lcom/android/server/appop/AppOpsService$AttributedOp;
    .registers 5

    .line 1541
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService$AttributedOp;

    if-nez v0, :cond_16

    .line 1543
    new-instance v0, Lcom/android/server/appop/AppOpsService$AttributedOp;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {v0, v1, p2, p1}, Lcom/android/server/appop/AppOpsService$AttributedOp;-><init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/server/appop/AppOpsService$Op;)V

    .line 1544
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v0
.end method

.method public isRunning()Z
    .registers 5

    .line 1579
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 1581
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$AttributedOp;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$AttributedOp;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return v1
.end method

.method public removeAttributionsWithNoTime()V
    .registers 3

    .line 1530
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 1531
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService$AttributedOp;

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService$AttributedOp;->hasAnyTime()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1532
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Op;->mAttributions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    return-void
.end method

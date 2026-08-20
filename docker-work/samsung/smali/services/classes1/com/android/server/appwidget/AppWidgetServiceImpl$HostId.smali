.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HostId"
.end annotation


# instance fields
.field public final hostId:I

.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 5545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5546
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 5547
    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    .line 5548
    iput-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 5559
    :cond_8
    const-class v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    return v1

    .line 5562
    :cond_11
    check-cast p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 5563
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 5566
    :cond_1a
    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    iget v3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    if-eq v2, v3, :cond_21

    return v1

    .line 5569
    :cond_21
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    if-nez p0, :cond_2a

    .line 5570
    iget-object p0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    if-eqz p0, :cond_33

    return v1

    .line 5573
    :cond_2a
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    return v1

    :cond_33
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 5581
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    mul-int/lit8 v0, v0, 0x1f

    .line 5582
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5583
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    if-eqz p0, :cond_12

    .line 5584
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 5590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HostId{user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", app:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 5591
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hostId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

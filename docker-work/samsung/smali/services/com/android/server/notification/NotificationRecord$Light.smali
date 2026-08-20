.class final Lcom/android/server/notification/NotificationRecord$Light;
.super Ljava/lang/Object;
.source "NotificationRecord.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Light"
.end annotation


# instance fields
.field public final color:I

.field public final offMs:I

.field public final onMs:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 1701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1702
    iput p1, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 1703
    iput p2, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    .line 1704
    iput p3, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

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

    if-eqz p1, :cond_29

    .line 1710
    const-class v2, Lcom/android/server/notification/NotificationRecord$Light;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_29

    .line 1712
    :cond_10
    check-cast p1, Lcom/android/server/notification/NotificationRecord$Light;

    .line 1714
    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v3, p1, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    if-eq v2, v3, :cond_19

    return v1

    .line 1715
    :cond_19
    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v3, p1, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    if-eq v2, v3, :cond_20

    return v1

    .line 1716
    :cond_20
    iget p0, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    iget p1, p1, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    if-ne p0, p1, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0

    :cond_29
    :goto_29
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1722
    iget v0, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    mul-int/lit8 v0, v0, 0x1f

    .line 1723
    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1724
    iget p0, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Light{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", onMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

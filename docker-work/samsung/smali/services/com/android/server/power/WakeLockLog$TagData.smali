.class public Lcom/android/server/power/WakeLockLog$TagData;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagData"
.end annotation


# instance fields
.field public index:I

.field public lastUsedTime:J

.field public ownerUid:I

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1258
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    .line 1259
    iput p2, p0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1267
    :cond_4
    instance-of v1, p1, Lcom/android/server/power/WakeLockLog$TagData;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 1268
    check-cast p1, Lcom/android/server/power/WakeLockLog$TagData;

    .line 1269
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget p0, p0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    iget p1, p1, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    if-ne p0, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    return v0

    :cond_1e
    return v2
.end method

.method public getByteSize()I
    .registers 2

    .line 1288
    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    :goto_c
    const/16 v0, 0x8

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x4

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

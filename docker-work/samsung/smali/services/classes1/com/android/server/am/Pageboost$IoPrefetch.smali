.class public final Lcom/android/server/am/Pageboost$IoPrefetch;
.super Ljava/lang/Object;
.source "Pageboost.java"

# interfaces
.implements Lcom/android/server/am/Pageboost$PreDo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IoPrefetch"
.end annotation


# static fields
.field public static final MAX_PACKAGE_NAME_LEN:I = 0x100


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activeLaunch(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z
    .registers 6

    .line 1517
    iget-object p0, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x100

    if-lt p0, v1, :cond_26

    .line 1518
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abort alp due to long package name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1521
    :cond_26
    iget p0, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    const/4 v1, 0x2

    const-string v2, " , "

    if-eq p0, v1, :cond_57

    const/4 p0, 0x4

    .line 1522
    iget-object v0, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/am/Pageboost$PageboostdProxy;->executeCmd(ILjava/lang/String;)V

    .line 1523
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alp for : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_79

    .line 1526
    :cond_57
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alp skip : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    return v0
.end method

.method public execute(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z
    .registers 5

    .line 1503
    iget-object p0, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x100

    if-lt p0, v1, :cond_26

    .line 1504
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abort IoPrefetch due to long package name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1507
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getCapturedLevel()I

    move-result p0

    const/4 v1, 0x1

    if-lez p0, :cond_4d

    .line 1508
    iget-object p0, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/android/server/am/Pageboost$PageboostdProxy;->executeCmd(ILjava/lang/String;)V

    .line 1509
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO Prefetch for : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_4d
    return v0
.end method

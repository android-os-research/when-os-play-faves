.class public Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService;
.super Landroid/os/IStatsBootstrapAtomService$Stub;
.source "StatsBootstrapAtomService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "StatsBootstrapAtomService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/os/IStatsBootstrapAtomService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public reportBootstrapAtom(Landroid/os/StatsBootstrapAtom;)V
    .registers 10

    .line 40
    iget p0, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    const-string v0, "StatsBootstrapAtomService"

    const/4 v1, 0x1

    if-lt p0, v1, :cond_94

    const/16 v2, 0x2710

    if-lt p0, v2, :cond_d

    goto/16 :goto_94

    .line 44
    :cond_d
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    iget v2, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {p0, v2}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 45
    iget-object v2, p1, Landroid/os/StatsBootstrapAtom;->values:[Landroid/os/StatsBootstrapAtomValue;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_88

    aget-object v5, v2, v4

    .line 46
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getTag()I

    move-result v6

    if-eqz v6, :cond_7e

    if-eq v6, v1, :cond_76

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6e

    const/4 v7, 0x3

    if-eq v6, v7, :cond_66

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5e

    const/4 v7, 0x5

    if-eq v6, v7, :cond_56

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected value type "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getTag()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when logging atom "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_56
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getBytesValue()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    goto :goto_85

    .line 60
    :cond_5e
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    goto :goto_85

    .line 57
    :cond_66
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getFloatValue()F

    move-result v5

    invoke-virtual {p0, v5}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    goto :goto_85

    .line 54
    :cond_6e
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getLongValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    goto :goto_85

    .line 51
    :cond_76
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getIntValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto :goto_85

    .line 48
    :cond_7e
    invoke-virtual {v5}, Landroid/os/StatsBootstrapAtomValue;->getBoolValue()Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    :goto_85
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 72
    :cond_88
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void

    .line 41
    :cond_94
    :goto_94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Atom ID "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/StatsBootstrapAtom;->atomId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid atom ID"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

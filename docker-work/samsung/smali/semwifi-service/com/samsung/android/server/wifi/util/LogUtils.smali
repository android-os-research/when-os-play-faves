.class public Lcom/samsung/android/server/wifi/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field private static final REGEX_BSSID:Ljava/lang/String; = "([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})"


# instance fields
.field private final bssidPattern:Ljava/util/regex/Pattern;

.field private final isProductDev:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/util/LogUtils;->isProductDev:Z

    const-string v0, "([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})"

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/util/LogUtils;->bssidPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/util/LogUtils;->isProductDev:Z

    const-string p1, "([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})"

    .line 40
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/LogUtils;->bssidPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 56
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/util/LogUtils;->isProductDev:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 44
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getPrintableLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "**"

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string p0, ""

    return-object p0

    .line 67
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/LogUtils;->bssidPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v2, 0x0

    .line 71
    :goto_17
    :try_start_17
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 72
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 73
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    add-int/lit8 v5, v3, 0x9

    .line 74
    invoke-virtual {v1, p1, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0xb

    add-int/lit8 v5, v3, 0xc

    .line 76
    invoke-virtual {v1, p1, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0xe

    .line 78
    invoke-virtual {v1, p1, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_17

    .line 81
    :cond_41
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_48
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_17 .. :try_end_48} :catch_48

    .line 84
    :catch_48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 48
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 60
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/util/LogUtils;->isProductDev:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 52
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

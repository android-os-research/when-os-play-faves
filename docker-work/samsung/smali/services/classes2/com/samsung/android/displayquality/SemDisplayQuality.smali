.class public Lcom/samsung/android/displayquality/SemDisplayQuality;
.super Lcom/samsung/android/displayquality/SemDisplayQualityAP;
.source "SemDisplayQuality.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SemDisplayQualityDummy"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/displayquality/SemDisplayQualityAP;-><init>(Landroid/content/Context;)V

    .line 13
    iget-boolean p0, p0, Lcom/samsung/android/displayquality/SemDisplayQualityAP;->DEBUG:Z

    if-eqz p0, :cond_e

    const-string p0, "SemDisplayQualityDummy"

    const-string p1, "SemDisplayQuality"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method


# virtual methods
.method public handleAutoBrightnessModeOff()V
    .registers 1

    return-void
.end method

.method public handleAutoBrightnessModeOn()V
    .registers 1

    return-void
.end method

.method public handleScreenOff()V
    .registers 1

    return-void
.end method

.method public handleScreenOffAsync()V
    .registers 1

    return-void
.end method

.method public handleScreenOn()V
    .registers 1

    return-void
.end method

.method public handleScreenOnAsync()V
    .registers 1

    return-void
.end method

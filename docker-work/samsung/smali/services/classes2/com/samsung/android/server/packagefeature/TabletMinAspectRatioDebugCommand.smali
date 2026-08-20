.class public Lcom/samsung/android/server/packagefeature/TabletMinAspectRatioDebugCommand;
.super Lcom/samsung/android/server/packagefeature/MinAspectRatioDebugCommand;
.source "PackageFeatureDebugCommand.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/server/packagefeature/MinAspectRatioDebugCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_3

    goto :goto_5

    :cond_3
    const-string p2, "19.5:9"

    :goto_5
    return-object p2
.end method

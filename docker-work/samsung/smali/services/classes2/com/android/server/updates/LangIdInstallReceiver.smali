.class public Lcom/android/server/updates/LangIdInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "LangIdInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "/data/misc/textclassifier/"

    const-string v1, "lang_id.model"

    const-string v2, "metadata/lang_id"

    const-string/jumbo v3, "version"

    .line 22
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public verifyVersion(II)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

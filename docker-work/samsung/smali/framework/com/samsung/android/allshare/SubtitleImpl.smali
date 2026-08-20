.class final Lcom/samsung/android/allshare/SubtitleImpl;
.super Lcom/samsung/android/allshare/Subtitle;
.source "SubtitleImpl.java"


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method protected constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/allshare/Subtitle;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/SubtitleImpl;->mBundle:Landroid/os/Bundle;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/allshare/SubtitleImpl;->mBundle:Landroid/os/Bundle;

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist getType()Ljava/lang/String;
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/samsung/android/allshare/SubtitleImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_d

    :cond_7
    const-string v1, "SUBTITLE_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/samsung/android/allshare/SubtitleImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    const-string v1, "SUBTITLE_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_c
    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

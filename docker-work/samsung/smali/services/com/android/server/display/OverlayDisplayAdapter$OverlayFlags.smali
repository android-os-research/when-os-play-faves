.class public final Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OverlayFlags"
.end annotation


# instance fields
.field public final mOwnContentOnly:Z

.field public final mSecure:Z

.field public final mShouldShowSystemDecorations:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .registers 4

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-boolean p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    .line 660
    iput-boolean p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    .line 661
    iput-boolean p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    return-void
.end method

.method public static parseFlags(Ljava/lang/String;)Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;
    .registers 9

    .line 665
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 666
    new-instance p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    invoke-direct {p0, v1, v1, v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;-><init>(ZZZ)V

    return-object p0

    :cond_d
    const-string v0, ","

    .line 675
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_17
    if-ge v1, v0, :cond_3d

    aget-object v5, p0, v1

    const-string/jumbo v6, "secure"

    .line 676
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_26

    move v2, v7

    :cond_26
    const-string/jumbo v6, "own_content_only"

    .line 679
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    move v3, v7

    :cond_30
    const-string/jumbo v6, "should_show_system_decorations"

    .line 682
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    move v4, v7

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 686
    :cond_3d
    new-instance p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;-><init>(ZZZ)V

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "secure="

    .line 692
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ownContentOnly="

    .line 693
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mOwnContentOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowSystemDecorations="

    .line 694
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mShouldShowSystemDecorations:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 695
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

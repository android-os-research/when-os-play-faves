.class public Landroid/text/style/SpellCheckSpan;
.super Ljava/lang/Object;
.source "SpellCheckSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private greylist-max-o mSpellCheckInProgress:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    .line 38
    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 72
    invoke-virtual {p0}, Landroid/text/style/SpellCheckSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .registers 2

    .line 77
    const/16 v0, 0x14

    return v0
.end method

.method public greylist isSpellCheckInProgress()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    return v0
.end method

.method public greylist setSpellCheckInProgress(Z)V
    .registers 2
    .param p1, "inProgress"    # Z

    .line 47
    iput-boolean p1, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    .line 48
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/text/style/SpellCheckSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 63
    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    iget-boolean v0, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return-void
.end method

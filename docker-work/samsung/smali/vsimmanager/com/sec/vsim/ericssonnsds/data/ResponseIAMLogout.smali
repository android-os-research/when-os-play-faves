.class public Lcom/sec/vsim/ericssonnsds/data/ResponseIAMLogout;
.super Lcom/sec/vsim/ericssonnsds/data/OAuthResponse;
.source "ResponseIAMLogout.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ResponseIAMLogout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isSignedOut:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseIAMLogout$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ResponseIAMLogout$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ResponseIAMLogout;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 9
    invoke-direct {p0}, Lcom/sec/vsim/ericssonnsds/data/OAuthResponse;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 11
    .local v0, "isSignedOutVal":B
    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const/4 v1, 0x0

    goto :goto_15

    :cond_c
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_15
    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseIAMLogout;->isSignedOut:Ljava/lang/Boolean;

    .line 12
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 21
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseIAMLogout;->isSignedOut:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    .line 22
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_11

    .line 24
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 26
    :goto_11
    return-void
.end method

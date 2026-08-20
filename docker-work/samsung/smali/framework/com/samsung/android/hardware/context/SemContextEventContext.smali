.class public Lcom/samsung/android/hardware/context/SemContextEventContext;
.super Ljava/lang/Object;
.source "SemContextEventContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextEventContext;",
            ">;"
        }
    .end annotation
.end field

.field protected static final whitelist serialVersionUID:J = 0x3ea68c14ab635a1eL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEventContext$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEventContext$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextEventContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 72
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    return-void
.end method

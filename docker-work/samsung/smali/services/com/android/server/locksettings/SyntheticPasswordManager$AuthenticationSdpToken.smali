.class public Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationSdpToken"
.end annotation


# instance fields
.field public destroyed:Z

.field public secureMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 385
    iput-boolean v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->destroyed:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecureMode()I
    .registers 1

    .line 388
    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->secureMode:I

    return p0
.end method

.method public isDestroyed()Z
    .registers 1

    .line 396
    iget-boolean p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->destroyed:Z

    return p0
.end method

.method public setDestroyed(Z)V
    .registers 2

    .line 400
    iput-boolean p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->destroyed:Z

    return-void
.end method

.method public setSecureMode(I)V
    .registers 2

    .line 392
    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;->secureMode:I

    return-void
.end method

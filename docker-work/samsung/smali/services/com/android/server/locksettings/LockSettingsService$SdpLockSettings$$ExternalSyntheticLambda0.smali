.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->$r8$lambda$wg1MM3yp8fXnPgN6G_pAwhwlM0E(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;ILcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    return-void
.end method

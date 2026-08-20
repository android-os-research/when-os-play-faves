.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda7;->f$0:I

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda7;->f$0:I

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    check-cast p1, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    invoke-static {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$SdpLockSettings;->$r8$lambda$yAadLVCUrkAmeSfnvLNPx7jz0RI(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)V

    return-void
.end method

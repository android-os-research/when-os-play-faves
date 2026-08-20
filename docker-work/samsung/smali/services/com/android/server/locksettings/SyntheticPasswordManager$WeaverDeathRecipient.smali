.class public Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WeaverDeathRecipient"
.end annotation


# instance fields
.field public deathCount:I

.field public final synthetic this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V
    .registers 2

    .line 891
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 892
    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;->deathCount:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 4

    .line 896
    iget p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;->deathCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;->deathCount:I

    .line 897
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Weaver HAL died. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;->deathCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "times"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyntheticPasswordManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :try_start_24
    iget-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$fgetmWeaver(Lcom/android/server/locksettings/SyntheticPasswordManager;)Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/hardware/weaver/V1_0/IWeaver;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_34

    :catch_2e
    move-exception p1

    const-string v0, "Failed to unlinkToDeath"

    .line 901
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 903
    :goto_34
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$fputmWeaver(Lcom/android/server/locksettings/SyntheticPasswordManager;Landroid/hardware/weaver/V1_0/IWeaver;)V

    return-void
.end method

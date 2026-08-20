.class final enum Lcom/android/commands/requestsync/RequestSync$Operation$3;
.super Lcom/android/commands/requestsync/RequestSync$Operation;
.source "RequestSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/requestsync/RequestSync$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/commands/requestsync/RequestSync$Operation;-><init>(Ljava/lang/String;ILcom/android/commands/requestsync/RequestSync$Operation-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/commands/requestsync/RequestSync$Operation$3-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/commands/requestsync/RequestSync$Operation$3;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method invoke(Lcom/android/commands/requestsync/RequestSync;)V
    .registers 5
    .param p1, "caller"    # Lcom/android/commands/requestsync/RequestSync;

    .line 67
    invoke-static {p1}, Lcom/android/commands/requestsync/RequestSync;->-$$Nest$fgetmAccount(Lcom/android/commands/requestsync/RequestSync;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {p1}, Lcom/android/commands/requestsync/RequestSync;->-$$Nest$fgetmAuthority(Lcom/android/commands/requestsync/RequestSync;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/commands/requestsync/RequestSync;->-$$Nest$fgetmExtras(Lcom/android/commands/requestsync/RequestSync;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

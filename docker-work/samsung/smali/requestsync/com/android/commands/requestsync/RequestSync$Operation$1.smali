.class final enum Lcom/android/commands/requestsync/RequestSync$Operation$1;
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

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/commands/requestsync/RequestSync$Operation;-><init>(Ljava/lang/String;ILcom/android/commands/requestsync/RequestSync$Operation-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/commands/requestsync/RequestSync$Operation$1-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/commands/requestsync/RequestSync$Operation$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method invoke(Lcom/android/commands/requestsync/RequestSync;)V
    .registers 6
    .param p1, "caller"    # Lcom/android/commands/requestsync/RequestSync;

    .line 39
    invoke-static {p1}, Lcom/android/commands/requestsync/RequestSync;->-$$Nest$fgetmExemptionFlag(Lcom/android/commands/requestsync/RequestSync;)I

    move-result v0

    .line 40
    .local v0, "flag":I
    invoke-static {p1}, Lcom/android/commands/requestsync/RequestSync;->-$$Nest$fgetmExtras(Lcom/android/commands/requestsync/RequestSync;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "v_exemption"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    if-nez v0, :cond_16

    .line 42
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Making a sync request as a background app.\nNote: request may be throttled by App Standby.\nTo override this behavior and run a sync immediately, pass a -f or -F option (use -h for help).\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    :cond_16
    new-instance v1, Landroid/content/SyncRequest$Builder;

    invoke-direct {v1}, Landroid/content/SyncRequest$Builder;-><init>()V

    invoke-static {p1}, Lcom/android/commands/requestsync/RequestSync;->-$$Nest$fgetmAccount(Lcom/android/commands/requestsync/RequestSync;)Landroid/accounts/Account;

    move-result-object v2

    invoke-static {p1}, Lcom/android/commands/requestsync/RequestSync;->-$$Nest$fgetmAuthority(Lcom/android/commands/requestsync/RequestSync;)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/commands/requestsync/RequestSync;->-$$Nest$fgetmExtras(Lcom/android/commands/requestsync/RequestSync;)Landroid/os/Bundle;

    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v1

    .line 54
    .local v1, "request":Landroid/content/SyncRequest;
    invoke-static {v1}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    .line 55
    return-void
.end method

.class public Lcom/android/server/alarm/AppSyncInfo$AccountListener;
.super Ljava/lang/Object;
.source "AppSyncInfo.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AppSyncInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountListener"
.end annotation


# instance fields
.field public ALLOWLIST_PLUS_AUTO_ADD:Z

.field public final synthetic this$0:Lcom/android/server/alarm/AppSyncInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AppSyncInfo;)V
    .registers 2

    .line 500
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 501
    iput-boolean p1, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->ALLOWLIST_PLUS_AUTO_ADD:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/AppSyncInfo;Lcom/android/server/alarm/AppSyncInfo$AccountListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AppSyncInfo$AccountListener;-><init>(Lcom/android/server/alarm/AppSyncInfo;)V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 2

    .line 548
    invoke-virtual {p0}, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->queryAccounts()V

    return-void
.end method

.method public final queryAccounts()V
    .registers 7

    .line 507
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {v0}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fgetmContext(Lcom/android/server/alarm/AppSyncInfo;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    if-nez v0, :cond_11

    return-void

    .line 509
    :cond_11
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {v1}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fgetmAccountsPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 512
    array-length v1, v0

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_41

    aget-object v3, v0, v2

    .line 513
    iget-object v4, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {v4}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fgetmAccountsPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3e

    .line 514
    iget-object v4, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {v4}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fgetmAccountsPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 520
    :cond_41
    iget-boolean v0, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->ALLOWLIST_PLUS_AUTO_ADD:Z

    const-string v1, "AppSyncInfo"

    if-eqz v0, :cond_e1

    .line 521
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {v0}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fgetmTargetPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 522
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {v0}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fgetmCscPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 523
    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {v3}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fgetmTargetPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 528
    :cond_70
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {v0}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fgetmAccountsPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 529
    :cond_7a
    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 530
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 531
    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {v3}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fgetmTargetPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_7a

    .line 533
    :cond_96
    iget-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {v0}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fgetmAccountsPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 534
    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {v3}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fgetmTargetPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 536
    :cond_b6
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p0}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fgetmTargetPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<TargetPackages> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 541
    :cond_e1
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$AccountListener;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-static {p0}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$fgetmAccountsPackages(Lcom/android/server/alarm/AppSyncInfo;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_eb
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<AccPackages> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_eb

    :cond_10c
    return-void
.end method

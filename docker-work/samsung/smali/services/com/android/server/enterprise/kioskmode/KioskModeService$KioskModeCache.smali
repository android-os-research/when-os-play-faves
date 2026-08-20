.class public Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;
.super Lcom/android/server/enterprise/EdmCache;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KioskModeCache"
.end annotation


# instance fields
.field public mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBlockedHwKeys(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .registers 2

    .line 2719
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Lcom/android/server/enterprise/EdmCache;-><init>()V

    const/4 p1, 0x0

    .line 2720
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 2744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2745
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2746
    iget-object p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    if-eqz p2, :cond_68

    .line 2747
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 2748
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_68

    .line 2749
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "BlockedKeyList for userId "

    .line 2750
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    .line 2752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2753
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2754
    :cond_3f
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2755
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2756
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string v2, ", "

    .line 2758
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :cond_5a
    const-string/jumbo v1, "} "

    .line 2761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2762
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 2766
    :cond_68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public updateCache()Z
    .registers 6

    .line 2725
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 2728
    :goto_8
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$mgetAllBlockedList(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;

    if-eqz v0, :cond_38

    .line 2730
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$sfgetACTION_REFRESH_HWKEY_INTERNAL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    .line 2731
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2732
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2734
    :try_start_24
    iget-object p0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-static {p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Landroid/content/Context;

    move-result-object p0

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_35
    .catchall {:try_start_24 .. :try_end_2f} :catchall_30

    goto :goto_35

    :catchall_30
    move-exception p0

    .line 2737
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2738
    throw p0

    .line 2737
    :catch_35
    :goto_35
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_38
    return v1
.end method

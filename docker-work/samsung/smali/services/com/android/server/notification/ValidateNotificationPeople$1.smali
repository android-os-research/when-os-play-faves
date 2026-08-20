.class public Lcom/android/server/notification/ValidateNotificationPeople$1;
.super Landroid/database/ContentObserver;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ValidateNotificationPeople;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    .line 127
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iput-object p3, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5

    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 131
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {p1}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$fgetmEvictionCount(Lcom/android/server/notification/ValidateNotificationPeople;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_36

    .line 132
    :cond_13
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetVERBOSE()Z

    move-result p1

    if-eqz p1, :cond_36

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mEvictionCount: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v0}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$fgetmEvictionCount(Lcom/android/server/notification/ValidateNotificationPeople;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ValidateNoPeople"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_36
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {p1}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$fgetmPeopleCache(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/LruCache;->evictAll()V

    .line 135
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {p1}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$fgetmEvictionCount(Lcom/android/server/notification/ValidateNotificationPeople;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$fputmEvictionCount(Lcom/android/server/notification/ValidateNotificationPeople;I)V

    .line 138
    iget-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople$1;->val$context:Landroid/content/Context;

    invoke-static {p1, p0, p2, p3}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$mupdateExceptionContacts(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Landroid/net/Uri;I)V

    return-void
.end method

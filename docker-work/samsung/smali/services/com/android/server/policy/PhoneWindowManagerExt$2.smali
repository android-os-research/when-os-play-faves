.class public Lcom/android/server/policy/PhoneWindowManagerExt$2;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2

    .line 1940
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1942
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 1943
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    if-nez v0, :cond_1c

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 1944
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1945
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    :cond_1c
    const/4 v0, 0x0

    const-string v2, "android.intent.extra.REPLACING"

    .line 1946
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1948
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    if-nez v0, :cond_80

    .line 1950
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1951
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasOwnerPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1952
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1954
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$misActivitiesAvailable(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 1955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The package("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") has been removed. clearKeyCustomizationInfo."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneWindowManagerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->clearKeyCustomizationInfoByPackage(Ljava/lang/String;)V

    .line 1964
    :cond_71
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$2;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    .line 1965
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1964
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->removeHotKey(Ljava/lang/String;)V

    :cond_80
    return-void
.end method

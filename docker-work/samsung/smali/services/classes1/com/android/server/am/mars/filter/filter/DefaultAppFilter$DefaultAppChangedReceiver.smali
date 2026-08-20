.class public Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultAppFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultAppChangedReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;-><init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_53

    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_53

    .line 236
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 239
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    const-string p1, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->-$$Nest$fputmDefaultDialerPackage(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Ljava/lang/String;)V

    goto :goto_53

    :cond_21
    const-string p2, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 241
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    const/4 p2, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-static {v0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->-$$Nest$fgetmContext(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)Landroid/content/Context;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 242
    invoke-static {p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZI)Landroid/content/ComponentName;

    move-result-object p1

    .line 244
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_42

    :cond_41
    const/4 p1, 0x0

    :goto_42
    invoke-static {p0, p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->-$$Nest$fputmDefaultSmsPackage(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Ljava/lang/String;)V

    goto :goto_53

    :cond_46
    const-string p1, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 246
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;->this$0:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    invoke-static {p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->-$$Nest$msetDefaultHomePackage(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)V

    :cond_53
    :goto_53
    return-void
.end method

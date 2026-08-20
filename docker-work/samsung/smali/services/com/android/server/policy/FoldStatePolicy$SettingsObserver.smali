.class public Lcom/android/server/policy/FoldStatePolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "FoldStatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/FoldStatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/FoldStatePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/FoldStatePolicy;Landroid/os/Handler;)V
    .registers 5

    .line 213
    iput-object p1, p0, Lcom/android/server/policy/FoldStatePolicy$SettingsObserver;->this$0:Lcom/android/server/policy/FoldStatePolicy;

    .line 214
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 215
    # getter for: Lcom/android/server/devicestate/DeviceStatePolicy;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/policy/FoldStatePolicy;->access$000(Lcom/android/server/policy/FoldStatePolicy;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "ltw_smartview_connected"

    .line 217
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 216
    invoke-virtual {p1, p2, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    if-eqz p2, :cond_54

    const-string/jumbo p1, "ltw_smartview_connected"

    .line 224
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_54

    .line 227
    :cond_10
    iget-object p2, p0, Lcom/android/server/policy/FoldStatePolicy$SettingsObserver;->this$0:Lcom/android/server/policy/FoldStatePolicy;

    # getter for: Lcom/android/server/devicestate/DeviceStatePolicy;->mContext:Landroid/content/Context;
    invoke-static {p2}, Lcom/android/server/policy/FoldStatePolicy;->access$100(Lcom/android/server/policy/FoldStatePolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    move v1, v0

    :cond_23
    invoke-static {p2, v1}, Lcom/android/server/policy/FoldStatePolicy;->-$$Nest$fputmIsLTWSmartViewConnected(Lcom/android/server/policy/FoldStatePolicy;Z)V

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onChange mIsLTWSmartViewConnected = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/policy/FoldStatePolicy$SettingsObserver;->this$0:Lcom/android/server/policy/FoldStatePolicy;

    invoke-static {p2}, Lcom/android/server/policy/FoldStatePolicy;->-$$Nest$fgetmIsLTWSmartViewConnected(Lcom/android/server/policy/FoldStatePolicy;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeviceStatePolicy"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p1, p0, Lcom/android/server/policy/FoldStatePolicy$SettingsObserver;->this$0:Lcom/android/server/policy/FoldStatePolicy;

    invoke-static {p1}, Lcom/android/server/policy/FoldStatePolicy;->-$$Nest$fgetmIsLTWSmartViewConnected(Lcom/android/server/policy/FoldStatePolicy;)Z

    move-result p1

    if-nez p1, :cond_54

    .line 232
    iget-object p0, p0, Lcom/android/server/policy/FoldStatePolicy$SettingsObserver;->this$0:Lcom/android/server/policy/FoldStatePolicy;

    invoke-static {p0}, Lcom/android/server/policy/FoldStatePolicy;->-$$Nest$fgetmProvider(Lcom/android/server/policy/FoldStatePolicy;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    :cond_54
    :goto_54
    return-void
.end method

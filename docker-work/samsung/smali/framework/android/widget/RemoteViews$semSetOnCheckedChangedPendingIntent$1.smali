.class Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;

    .line 8316
    iput-object p1, p0, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent$1;->this$1:Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 10
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 8319
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8320
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isChecked"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8321
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent$1;->this$1:Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;

    iget-object v2, v2, Landroid/widget/RemoteViews$semSetOnCheckedChangedPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/high16 v4, 0x10000000

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_1f
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 8326
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_28

    .line 8324
    :catch_20
    move-exception v0

    .line 8325
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "RemoteViews"

    const-string v2, "Cannot send pending intent: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8327
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_28
    return-void
.end method

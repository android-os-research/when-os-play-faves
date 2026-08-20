.class Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;

    .line 8222
    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 8224
    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 8225
    .local v2, "x":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 8226
    .local v3, "y":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v4, "isUp"

    const-string/jumbo v5, "y_position"

    const-string/jumbo v6, "x_position"

    const-string v7, "Cannot send pending intent: "

    const-string v8, "RemoteViews"

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_74

    goto :goto_72

    .line 8244
    :pswitch_1f
    :try_start_1f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8245
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 8246
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 8247
    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8248
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v4, v1, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;

    iget-object v4, v4, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 8249
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v11

    const/high16 v13, 0x10000000

    const/high16 v14, 0x10000000

    const/4 v15, 0x0

    .line 8248
    move-object v12, v0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_43
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1f .. :try_end_43} :catch_44

    .line 8255
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_72

    .line 8253
    :catch_44
    move-exception v0

    .line 8254
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    invoke-static {v8, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8256
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    goto :goto_72

    .line 8229
    :pswitch_49
    :try_start_49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8230
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 8231
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 8232
    invoke-virtual {v0, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8233
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v4, v1, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;

    iget-object v4, v4, Landroid/widget/RemoteViews$SemSetOnTouchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 8234
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v11

    const/high16 v13, 0x10000000

    const/high16 v14, 0x10000000

    const/4 v15, 0x0

    .line 8233
    move-object v12, v0

    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_6c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_49 .. :try_end_6c} :catch_6d

    .line 8240
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_72

    .line 8238
    :catch_6d
    move-exception v0

    .line 8239
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    invoke-static {v8, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8241
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    nop

    .line 8261
    :goto_72
    return v9

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_49
        :pswitch_1f
    .end packed-switch
.end method

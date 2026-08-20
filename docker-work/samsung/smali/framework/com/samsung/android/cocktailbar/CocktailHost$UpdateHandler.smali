.class Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;
.super Landroid/os/Handler;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/cocktailbar/CocktailHost;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 254
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    .line 255
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 256
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 259
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_e0

    goto/16 :goto_df

    .line 325
    :sswitch_7
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mnotePauseComponent(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/content/ComponentName;)V

    goto/16 :goto_df

    .line 321
    :sswitch_12
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mnoteResumeComponent(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/content/ComponentName;)V

    .line 322
    goto/16 :goto_df

    .line 313
    :sswitch_1d
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mchangeVisibleEdgeService(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    .line 314
    goto/16 :goto_df

    .line 305
    :sswitch_28
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mnotifyWakeUpState(Lcom/samsung/android/cocktailbar/CocktailHost;III)V

    .line 306
    goto/16 :goto_df

    .line 293
    :sswitch_3b
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mnotifyKeyguardState(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    .line 294
    goto/16 :goto_df

    .line 269
    :sswitch_46
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/widget/RemoteViews;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mpartiallyUpdateHelpView(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/widget/RemoteViews;I)V

    .line 270
    goto/16 :goto_df

    .line 317
    :sswitch_55
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/PendingIntent;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$msetPullToRefresh(Lcom/samsung/android/cocktailbar/CocktailHost;IILandroid/app/PendingIntent;)V

    .line 318
    goto/16 :goto_df

    .line 301
    :sswitch_64
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$msendExtraDataToCocktailBar(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/os/Bundle;)V

    .line 302
    goto/16 :goto_df

    .line 297
    :sswitch_71
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mswitchDefaultCocktail(Lcom/samsung/android/cocktailbar/CocktailHost;I)V

    .line 298
    goto :goto_df

    .line 309
    :sswitch_79
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$msetDisableTickerView(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    .line 310
    goto :goto_df

    .line 289
    :sswitch_83
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mupdateToolLauncher(Lcom/samsung/android/cocktailbar/CocktailHost;I)V

    .line 290
    goto :goto_df

    .line 285
    :sswitch_8b
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mviewDataChanged(Lcom/samsung/android/cocktailbar/CocktailHost;III)V

    .line 286
    goto :goto_df

    .line 281
    :sswitch_9d
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mcloseCocktail(Lcom/samsung/android/cocktailbar/CocktailHost;III)V

    .line 282
    goto :goto_df

    .line 277
    :sswitch_af
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mshowCocktail(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    .line 278
    goto :goto_df

    .line 273
    :sswitch_b9
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mremoveCocktail(Lcom/samsung/android/cocktailbar/CocktailHost;II)V

    .line 274
    goto :goto_df

    .line 265
    :sswitch_c3
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/widget/RemoteViews;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mpartiallyUpdateCocktail(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/widget/RemoteViews;I)V

    .line 266
    goto :goto_df

    .line 261
    :sswitch_d1
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;->this$0:Lcom/samsung/android/cocktailbar/CocktailHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/cocktailbar/Cocktail;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailHost;->-$$Nest$mupdateCocktail(Lcom/samsung/android/cocktailbar/CocktailHost;ILcom/samsung/android/cocktailbar/Cocktail;I)V

    .line 262
    nop

    .line 329
    :goto_df
    return-void

    :sswitch_data_e0
    .sparse-switch
        0x1 -> :sswitch_d1
        0x2 -> :sswitch_c3
        0x3 -> :sswitch_b9
        0x4 -> :sswitch_af
        0x5 -> :sswitch_9d
        0x6 -> :sswitch_8b
        0x7 -> :sswitch_83
        0x9 -> :sswitch_79
        0xa -> :sswitch_71
        0xc -> :sswitch_64
        0xd -> :sswitch_55
        0xe -> :sswitch_46
        0x64 -> :sswitch_3b
        0x65 -> :sswitch_28
        0x66 -> :sswitch_1d
        0x67 -> :sswitch_12
        0x68 -> :sswitch_7
    .end sparse-switch
.end method

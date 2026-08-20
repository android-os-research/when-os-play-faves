.class public final Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;
.super Landroid/os/Handler;
.source "CocktailBarManagerServiceContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CocktailBarHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Landroid/os/Looper;)V
    .registers 3

    .line 1125
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    .line 1126
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1130
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: entry what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    goto :goto_59

    .line 1148
    :pswitch_21
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$mhandleNotePauseComponent(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Landroid/content/ComponentName;)V

    goto :goto_59

    .line 1145
    :pswitch_2b
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$mhandleNoteResumeComponent(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Landroid/content/ComponentName;)V

    goto :goto_59

    .line 1142
    :pswitch_35
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$monUnlockUserImpl(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    goto :goto_59

    .line 1139
    :pswitch_3d
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$mstartCocktailBarServiceWithCurrentUser(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V

    goto :goto_59

    .line 1136
    :pswitch_43
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$mhandleChangedResumePackage(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Ljava/lang/String;)V

    goto :goto_59

    .line 1133
    :pswitch_4d
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_55

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    invoke-static {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$mhandleChangeVisibleEdgeService(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Z)V

    :goto_59
    return-void

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_43
        :pswitch_3d
        :pswitch_35
        :pswitch_2b
        :pswitch_21
    .end packed-switch
.end method

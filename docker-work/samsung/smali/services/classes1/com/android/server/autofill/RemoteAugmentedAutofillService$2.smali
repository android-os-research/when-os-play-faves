.class public Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;
.super Ljava/lang/Object;
.source "RemoteAugmentedAutofillService.java"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteAugmentedAutofillService;->maybeRequestShowInlineSuggestions(ILandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/os/Bundle;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/autofill/IAutoFillManagerClient;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field public final synthetic val$client:Landroid/view/autofill/IAutoFillManagerClient;

.field public final synthetic val$clientState:Landroid/os/Bundle;

.field public final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field public final synthetic val$inlineSuggestionsCallback:Ljava/util/function/Function;

.field public final synthetic val$onErrorCallback:Ljava/lang/Runnable;

.field public final synthetic val$sessionId:I

.field public final synthetic val$targetActivity:Landroid/content/ComponentName;

.field public final synthetic val$targetActivityToken:Landroid/os/IBinder;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/os/Bundle;Landroid/view/autofill/IAutoFillManagerClient;Ljava/util/function/Function;Landroid/view/autofill/AutofillId;Landroid/content/ComponentName;Landroid/os/IBinder;ILjava/lang/Runnable;)V
    .registers 11

    .line 280
    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iput p2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    iput-object p3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    iput-object p5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$inlineSuggestionsCallback:Ljava/util/function/Function;

    iput-object p6, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    iput-object p7, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$targetActivity:Landroid/content/ComponentName;

    iput-object p8, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$targetActivityToken:Landroid/os/IBinder;

    iput p9, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$userId:I

    iput-object p10, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$onErrorCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(II)V
    .registers 3

    .line 342
    invoke-static {}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "authenticate not implemented for augmented autofill"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public autofill(Landroid/service/autofill/Dataset;I)V
    .registers 14

    .line 283
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    .line 284
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$fgetmCallbacks(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    move-result-object v0

    iget v2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    .line 285
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    .line 284
    invoke-interface {v0, v2, v3, v4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;->logAugmentedAutofillAuthenticationSelected(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 286
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v8

    .line 288
    invoke-static {v1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v7

    .line 291
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 292
    iget-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    const-string p2, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v9, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 295
    :try_start_2c
    iget-object v5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    iget v6, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/view/autofill/IAutoFillManagerClient;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_34} :catch_35

    goto :goto_49

    .line 298
    :catch_35
    invoke-static {}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error starting auth flow"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$inlineSuggestionsCallback:Ljava/util/function/Function;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 300
    invoke-static {p0}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object p0

    .line 299
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_49
    return-void

    .line 304
    :cond_4a
    iget-object p2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-static {p2}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$fgetmCallbacks(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    move-result-object p2

    iget v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    .line 305
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    .line 304
    invoke-interface {p2, v0, v2, v3}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;->logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 307
    :try_start_5b
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object p2

    .line 308
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldContent()Landroid/content/ClipData;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_a7

    .line 310
    iget-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-static {p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$fgetmUriGrantsManager(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/AutofillUriGrantsManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$targetActivity:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$targetActivityToken:Landroid/os/IBinder;

    iget v4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$userId:I

    invoke-virtual {p1, v1, v3, v4, v0}, Lcom/android/server/autofill/AutofillUriGrantsManager;->grantUriPermissions(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/content/ClipData;)V

    .line 312
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillId;

    .line 313
    sget-boolean p2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_9f

    .line 314
    invoke-static {}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling client autofillContent(): id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_9f
    iget-object p2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    iget v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    invoke-interface {p2, v1, p1, v0}, Landroid/view/autofill/IAutoFillManagerClient;->autofillContent(ILandroid/view/autofill/AutofillId;Landroid/content/ClipData;)V

    goto :goto_f0

    .line 319
    :cond_a7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_bc

    .line 321
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v3}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    goto :goto_bd

    :cond_bc
    move v1, v2

    .line 322
    :goto_bd
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_e5

    .line 323
    invoke-static {}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling client autofill(): ids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", values="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_e5
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    .line 330
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object p1

    .line 327
    invoke-interface {v0, v2, p2, p1, v1}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 333
    :goto_f0
    iget-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$inlineSuggestionsCallback:Ljava/util/function/Function;

    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 334
    invoke-static {p0}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object p0

    .line 333
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fb
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_fb} :catch_fc

    goto :goto_105

    .line 336
    :catch_fc
    invoke-static {}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Encounter exception autofilling the values"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_105
    return-void
.end method

.method public onError()V
    .registers 1

    .line 356
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$onErrorCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .registers 3

    .line 348
    :try_start_0
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-interface {p0, p1, v0}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_14

    .line 350
    :catch_b
    invoke-static {}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteException starting intent sender"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    return-void
.end method

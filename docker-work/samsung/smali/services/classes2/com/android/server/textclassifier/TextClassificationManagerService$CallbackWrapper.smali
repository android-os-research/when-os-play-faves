.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;
.super Landroid/service/textclassifier/ITextClassifierCallback$Stub;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackWrapper"
.end annotation


# instance fields
.field public final mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;


# direct methods
.method public constructor <init>(Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 2

    .line 1200
    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassifierCallback$Stub;-><init>()V

    .line 1201
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/service/textclassifier/ITextClassifierCallback;

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    return-void
.end method

.method public static changeIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .registers 3

    .line 1327
    invoke-static {}, Lcom/android/server/textclassifier/IconsUriHelper;->getInstance()Lcom/android/server/textclassifier/IconsUriHelper;

    move-result-object v0

    .line 1328
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/textclassifier/IconsUriHelper;->getContentUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p0

    .line 1329
    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public static rewriteConversationActionsIcons(Landroid/os/Bundle;)V
    .registers 9

    .line 1281
    invoke-static {p0}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/ConversationActions;

    .line 1283
    invoke-virtual {v0}, Landroid/view/textclassifier/ConversationActions;->getConversationActions()Ljava/util/List;

    move-result-object v1

    .line 1284
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1285
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_15
    if-ge v4, v2, :cond_42

    .line 1287
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textclassifier/ConversationAction;

    .line 1289
    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->getAction()Landroid/app/RemoteAction;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->shouldRewriteIcon(Landroid/app/RemoteAction;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 1291
    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->toBuilder()Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v5

    .line 1292
    invoke-virtual {v6}, Landroid/view/textclassifier/ConversationAction;->getAction()Landroid/app/RemoteAction;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/textclassifier/ConversationAction$Builder;->setAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v5

    .line 1293
    invoke-virtual {v5}, Landroid/view/textclassifier/ConversationAction$Builder;->build()Landroid/view/textclassifier/ConversationAction;

    move-result-object v6

    const/4 v5, 0x1

    .line 1297
    :cond_3c
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_42
    if-eqz v5, :cond_50

    .line 1300
    new-instance v1, Landroid/view/textclassifier/ConversationActions;

    .line 1302
    invoke-virtual {v0}, Landroid/view/textclassifier/ConversationActions;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/view/textclassifier/ConversationActions;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 1300
    invoke-static {p0, v1}, Landroid/service/textclassifier/TextClassifierService;->putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    :cond_50
    return-void
.end method

.method public static rewriteTextClassificationIcons(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextClassification;
    .registers 8

    .line 1248
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v0

    .line 1249
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v3, v1, :cond_28

    .line 1252
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/RemoteAction;

    .line 1254
    invoke-static {v5}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->shouldRewriteIcon(Landroid/app/RemoteAction;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1256
    invoke-static {v5}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;

    move-result-object v5

    const/4 v4, 0x1

    .line 1260
    :cond_22
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_28
    if-eqz v4, :cond_3b

    .line 1264
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification;->toBuilder()Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object p0

    .line 1265
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification$Builder;->clearActions()Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object p0

    .line 1266
    invoke-virtual {p0, v2}, Landroid/view/textclassifier/TextClassification$Builder;->addActions(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassification$Builder;

    move-result-object p0

    .line 1267
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object p0

    goto :goto_3c

    :cond_3b
    const/4 p0, 0x0

    :goto_3c
    return-object p0
.end method

.method public static rewriteTextClassificationIcons(Landroid/os/Bundle;)V
    .registers 2

    .line 1272
    invoke-static {p0}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassification;

    .line 1273
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteTextClassificationIcons(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1276
    invoke-static {p0, v0}, Landroid/service/textclassifier/TextClassifierService;->putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    :cond_f
    return-void
.end method

.method public static rewriteTextSelectionIcons(Landroid/os/Bundle;)V
    .registers 3

    .line 1224
    invoke-static {p0}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextSelection;

    .line 1225
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    .line 1229
    :cond_d
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteTextClassificationIcons(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    if-nez v1, :cond_18

    return-void

    .line 1235
    :cond_18
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->toBuilder()Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v0

    .line 1236
    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextSelection$Builder;->setTextClassification(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v0

    .line 1237
    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Builder;->build()Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    .line 1233
    invoke-static {p0, v0}, Landroid/service/textclassifier/TextClassifierService;->putResponse(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static shouldRewriteIcon(Landroid/app/RemoteAction;)Z
    .registers 2

    if-eqz p0, :cond_f

    .line 1322
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public static validAction(Landroid/app/RemoteAction;)Landroid/app/RemoteAction;
    .registers 6

    .line 1307
    new-instance v0, Landroid/app/RemoteAction;

    .line 1308
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->changeIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 1309
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1310
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1311
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1312
    invoke-virtual {p0}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 1313
    invoke-virtual {p0}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/RemoteAction;->setShouldShowIcon(Z)V

    return-object v0
.end method


# virtual methods
.method public onFailure()V
    .registers 3

    .line 1335
    :try_start_0
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    invoke-interface {p0}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception p0

    const-string v0, "TextClassificationManagerService"

    const-string v1, "Callback error"

    .line 1337
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 4

    .line 1206
    invoke-static {p1}, Landroid/service/textclassifier/TextClassifierService;->getResponse(Landroid/os/Bundle;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1207
    instance-of v1, v0, Landroid/view/textclassifier/TextClassification;

    if-eqz v1, :cond_c

    .line 1208
    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteTextClassificationIcons(Landroid/os/Bundle;)V

    goto :goto_1b

    .line 1209
    :cond_c
    instance-of v1, v0, Landroid/view/textclassifier/ConversationActions;

    if-eqz v1, :cond_14

    .line 1210
    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteConversationActionsIcons(Landroid/os/Bundle;)V

    goto :goto_1b

    .line 1211
    :cond_14
    instance-of v0, v0, Landroid/view/textclassifier/TextSelection;

    if-eqz v0, :cond_1b

    .line 1212
    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->rewriteTextSelectionIcons(Landroid/os/Bundle;)V

    .line 1217
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$CallbackWrapper;->mWrapped:Landroid/service/textclassifier/ITextClassifierCallback;

    invoke-interface {p0, p1}, Landroid/service/textclassifier/ITextClassifierCallback;->onSuccess(Landroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_29

    :catch_21
    move-exception p0

    const-string p1, "TextClassificationManagerService"

    const-string v0, "Callback error"

    .line 1219
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    return-void
.end method

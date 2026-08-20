.class public Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
.super Ljava/lang/Object;
.source "InlineFillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/InlineFillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InlineFillUiInfo"
.end annotation


# instance fields
.field public mFilterText:Ljava/lang/String;

.field public mFocusedId:Landroid/view/autofill/AutofillId;

.field public mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field public mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

.field public mSessionId:I

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)V
    .registers 7

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p5, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mUserId:I

    .line 117
    iput p6, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mSessionId:I

    .line 118
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 119
    iput-object p2, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    .line 120
    iput-object p3, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFilterText:Ljava/lang/String;

    .line 121
    iput-object p4, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    return-void
.end method

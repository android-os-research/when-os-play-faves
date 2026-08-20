.class public Landroid/widget/directwriting/EditTextWritingViewAdapter;
.super Landroid/widget/directwriting/WritingView;
.source "EditTextWritingViewAdapter.java"


# instance fields
.field blacklist view:Landroid/widget/EditText;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/EditText;)V
    .registers 3
    .param p1, "view"    # Landroid/widget/EditText;

    .line 23
    invoke-direct {p0}, Landroid/widget/directwriting/WritingView;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    .line 24
    iput-object p1, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/EditText;Landroid/view/inputmethod/InputConnection;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/EditText;
    .param p2, "ic"    # Landroid/view/inputmethod/InputConnection;

    .line 18
    invoke-direct {p0}, Landroid/widget/directwriting/WritingView;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    .line 19
    iput-object p1, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    .line 20
    iput-object p2, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->ic:Landroid/view/inputmethod/InputConnection;

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist getBaseline()I
    .registers 2

    .line 164
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    return v0
.end method

.method public blacklist getBottom()I
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBottom()I

    move-result v0

    return v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getGlobalVisibleRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 259
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 260
    return-void
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getImeOptions()I
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public blacklist getInputType()I
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    return v0
.end method

.method public blacklist getLeft()I
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    return v0
.end method

.method public blacklist getLineAscent(I)I
    .registers 3
    .param p1, "line"    # I

    .line 219
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineBaseline(I)I
    .registers 3
    .param p1, "line"    # I

    .line 214
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineBottom(I)I
    .registers 3
    .param p1, "line"    # I

    .line 204
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineCount()I
    .registers 2

    .line 159
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    return v0
.end method

.method public blacklist getLineDescent(I)I
    .registers 3
    .param p1, "line"    # I

    .line 224
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineEnd(I)I
    .registers 3
    .param p1, "line"    # I

    .line 194
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineForOffset(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 184
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineHeight()I
    .registers 2

    .line 154
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getLineMax(I)F
    .registers 3
    .param p1, "i"    # I

    .line 179
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v0

    return v0
.end method

.method public blacklist getLineStart(I)I
    .registers 3
    .param p1, "line"    # I

    .line 189
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineTop(I)I
    .registers 3
    .param p1, "line"    # I

    .line 199
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLineVisibleEnd(I)I
    .registers 3
    .param p1, "line"    # I

    .line 209
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLocationOnScreen([I)V
    .registers 3
    .param p1, "outLocation"    # [I

    .line 229
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 230
    return-void
.end method

.method public blacklist getOffsetForPosition(FF)I
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 74
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->getOffsetForPosition(FF)I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingBottom()I
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingEnd()I
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingEnd()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingLeft()I
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingStart()I
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingStart()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingTop()I
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public blacklist getParagraphDirection(I)I
    .registers 3
    .param p1, "line"    # I

    .line 169
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    return v0
.end method

.method public blacklist getPrimaryHorizontal(I)F
    .registers 3
    .param p1, "offset"    # I

    .line 174
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0
.end method

.method public blacklist getPrivateImeOptions()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRight()I
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getRight()I

    move-result v0

    return v0
.end method

.method public blacklist getScrollX()I
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getScrollX()I

    move-result v0

    return v0
.end method

.method public blacklist getScrollY()I
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getScrollY()I

    move-result v0

    return v0
.end method

.method public blacklist getSelectionEnd()I
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public blacklist getSelectionStart()I
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public blacklist getSkipHoverCursorChange()Z
    .registers 2

    .line 269
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSkipHoverCursorChange()Z

    move-result v0

    return v0
.end method

.method public blacklist getText()Landroid/text/Editable;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTop()I
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v0

    return v0
.end method

.method public blacklist getView()Landroid/view/View;
    .registers 2

    .line 29
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    return-object v0
.end method

.method public blacklist getVisibility()I
    .registers 2

    .line 254
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    return v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    return v0
.end method

.method public blacklist hasFocus()Z
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public blacklist hasSelection()Z
    .registers 2

    .line 304
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isCursorVisible()Z
    .registers 2

    .line 289
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isCursorVisible()Z

    move-result v0

    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 274
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist isFocusable()Z
    .registers 2

    .line 279
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocusable()Z

    move-result v0

    return v0
.end method

.method public blacklist isVisibleToUser()Z
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method public blacklist length()I
    .registers 2

    .line 84
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    return v0
.end method

.method public blacklist onEditorAction(I)V
    .registers 3
    .param p1, "actionCode"    # I

    .line 54
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 55
    return-void
.end method

.method public blacklist requestFocus()Z
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public blacklist semGetTranslatedRectOnScreen(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 264
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->semGetTranslatedRectOnScreen(Landroid/graphics/Rect;)V

    .line 265
    return-void
.end method

.method public blacklist setDWSelectionFlag(Z)V
    .registers 3
    .param p1, "val"    # Z

    .line 299
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setDWSelectionFlag(Z)V

    .line 300
    return-void
.end method

.method public blacklist setInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .registers 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .line 309
    iput-object p1, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->ic:Landroid/view/inputmethod/InputConnection;

    .line 310
    return-void
.end method

.method public blacklist setSelection(I)V
    .registers 3
    .param p1, "selection"    # I

    .line 39
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 40
    return-void
.end method

.method public blacklist setSkipHoverCursorChange(Z)V
    .registers 3
    .param p1, "val"    # Z

    .line 294
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSkipHoverCursorChange(Z)V

    .line 295
    return-void
.end method

.method public blacklist setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 34
    iget-object v0, p0, Landroid/widget/directwriting/EditTextWritingViewAdapter;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

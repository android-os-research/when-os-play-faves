.class public final Landroid/database/CursorJoiner;
.super Ljava/lang/Object;
.source "CursorJoiner.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorJoiner$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/database/CursorJoiner$Result;",
        ">;",
        "Ljava/lang/Iterable<",
        "Landroid/database/CursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o mColumnsLeft:[I

.field private greylist-max-o mColumnsRight:[I

.field private greylist-max-o mCompareResult:Landroid/database/CursorJoiner$Result;

.field private greylist-max-o mCompareResultIsValid:Z

.field private greylist-max-o mCursorLeft:Landroid/database/Cursor;

.field private greylist-max-o mCursorRight:Landroid/database/Cursor;

.field private greylist-max-o mValues:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 45
    return-void
.end method

.method public constructor whitelist <init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V
    .registers 8
    .param p1, "cursorLeft"    # Landroid/database/Cursor;
    .param p2, "columnNamesLeft"    # [Ljava/lang/String;
    .param p3, "cursorRight"    # Landroid/database/Cursor;
    .param p4, "columnNamesRight"    # [Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    array-length v0, p2

    array-length v1, p4

    if-ne v0, v1, :cond_2c

    .line 84
    iput-object p1, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    .line 85
    iput-object p3, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    .line 87
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 88
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/database/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    .line 93
    invoke-direct {p0, p3, p4}, Landroid/database/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorJoiner;->mColumnsRight:[I

    .line 95
    iget-object v0, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    .line 96
    return-void

    .line 79
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "you must have the same number of columns on the left and right, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I
    .registers 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .line 109
    array-length v0, p2

    new-array v0, v0, [I

    .line 110
    .local v0, "columns":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_12

    .line 111
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 113
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method private static varargs blacklist compareStrings([Ljava/lang/String;)I
    .registers 6
    .param p0, "values"    # [Ljava/lang/String;

    .line 243
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_34

    .line 247
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_6
    array-length v1, p0

    if-ge v0, v1, :cond_32

    .line 248
    aget-object v1, p0, v0

    const/4 v2, -0x1

    if-nez v1, :cond_16

    .line 249
    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    if-nez v1, :cond_15

    goto :goto_2f

    .line 250
    :cond_15
    return v2

    .line 253
    :cond_16
    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    const/4 v3, 0x1

    if-nez v1, :cond_1e

    .line 254
    return v3

    .line 257
    :cond_1e
    aget-object v1, p0, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 258
    .local v1, "comp":I
    if-eqz v1, :cond_2f

    .line 259
    if-gez v1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v2, v3

    :goto_2e
    return v2

    .line 247
    .end local v1    # "comp":I
    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 263
    .end local v0    # "index":I
    :cond_32
    const/4 v0, 0x0

    return v0

    .line 244
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you must specify an even number of values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o incrementCursors()V
    .registers 3

    .line 217
    iget-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    if-eqz v0, :cond_2b

    .line 218
    sget-object v0, Landroid/database/CursorJoiner$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    iget-object v1, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    goto :goto_28

    .line 223
    :pswitch_12
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 224
    goto :goto_28

    .line 220
    :pswitch_18
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 221
    goto :goto_28

    .line 226
    :pswitch_1e
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 227
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 230
    :goto_28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    .line 232
    :cond_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_18
        :pswitch_12
    .end packed-switch
.end method

.method private static greylist-max-o populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V
    .registers 7
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnIndicies"    # [I
    .param p3, "startingIndex"    # I

    .line 206
    nop

    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_13

    .line 208
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    aget v2, p2, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 210
    .end local v0    # "i":I
    :cond_13
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 5

    .line 121
    iget-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_64

    .line 122
    sget-object v0, Landroid/database/CursorJoiner$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    iget-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v3}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_76

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value for mCompareResult, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :pswitch_2e
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_3e
    move v1, v2

    :cond_3f
    return v1

    .line 127
    :pswitch_40
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_51

    :cond_50
    move v1, v2

    :cond_51
    return v1

    .line 124
    :pswitch_52
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_63

    :cond_62
    move v1, v2

    :cond_63
    return v1

    .line 137
    :cond_64
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_75

    :cond_74
    move v1, v2

    :cond_75
    return v1

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_52
        :pswitch_40
        :pswitch_2e
    .end packed-switch
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/database/CursorJoiner$Result;",
            ">;"
        }
    .end annotation

    .line 99
    return-object p0
.end method

.method public whitelist next()Landroid/database/CursorJoiner$Result;
    .registers 8

    .line 157
    invoke-virtual {p0}, Landroid/database/CursorJoiner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 160
    invoke-direct {p0}, Landroid/database/CursorJoiner;->incrementCursors()V

    .line 161
    nop

    .line 163
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 164
    .local v0, "hasLeft":Z
    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 166
    .local v2, "hasRight":Z
    if-eqz v0, :cond_4a

    if-eqz v2, :cond_4a

    .line 167
    iget-object v3, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v4, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    iget-object v5, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/database/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 168
    iget-object v3, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v4, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    iget-object v5, p0, Landroid/database/CursorJoiner;->mColumnsRight:[I

    invoke-static {v3, v4, v5, v1}, Landroid/database/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 169
    iget-object v3, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    invoke-static {v3}, Landroid/database/CursorJoiner;->compareStrings([Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_64

    goto :goto_49

    .line 177
    :pswitch_3a
    sget-object v3, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_49

    .line 174
    :pswitch_3f
    sget-object v3, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    .line 175
    goto :goto_49

    .line 171
    :pswitch_44
    sget-object v3, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    .line 172
    nop

    .line 178
    :goto_49
    goto :goto_56

    .line 180
    :cond_4a
    if-eqz v0, :cond_51

    .line 181
    sget-object v3, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_56

    .line 183
    :cond_51
    nop

    .line 184
    sget-object v3, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    .line 186
    :goto_56
    iput-boolean v1, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    .line 187
    iget-object v1, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    return-object v1

    .line 158
    .end local v0    # "hasLeft":Z
    .end local v2    # "hasRight":Z
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must only call next() when hasNext() is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_64
    .packed-switch -0x1
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
    .end packed-switch
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0}, Landroid/database/CursorJoiner;->next()Landroid/database/CursorJoiner$Result;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

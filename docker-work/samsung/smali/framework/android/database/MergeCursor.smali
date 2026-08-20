.class public Landroid/database/MergeCursor;
.super Landroid/database/AbstractCursor;
.source "MergeCursor.java"


# instance fields
.field private greylist-max-o mCursor:Landroid/database/Cursor;

.field private greylist-max-o mCursors:[Landroid/database/Cursor;

.field private greylist-max-o mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor whitelist <init>([Landroid/database/Cursor;)V
    .registers 5
    .param p1, "cursors"    # [Landroid/database/Cursor;

    .line 43
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 27
    new-instance v0, Landroid/database/MergeCursor$1;

    invoke-direct {v0, p0}, Landroid/database/MergeCursor$1;-><init>(Landroid/database/MergeCursor;)V

    iput-object v0, p0, Landroid/database/MergeCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 44
    iput-object p1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    .line 45
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v1

    if-ge v0, v2, :cond_24

    .line 48
    aget-object v1, v1, v0

    if-nez v1, :cond_1c

    goto :goto_21

    .line 50
    :cond_1c
    iget-object v2, p0, Landroid/database/MergeCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 47
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 52
    .end local v0    # "i":I
    :cond_24
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 172
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 173
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_13

    .line 174
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    goto :goto_10

    .line 175
    :cond_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 173
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 177
    .end local v1    # "i":I
    :cond_13
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 178
    return-void
.end method

.method public whitelist deactivate()V
    .registers 4

    .line 161
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 162
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_12

    .line 163
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_f

    .line 164
    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    .line 162
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 167
    .end local v1    # "i":I
    :cond_12
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 168
    return-void
.end method

.method public whitelist getBlob(I)[B
    .registers 3
    .param p1, "column"    # I

    .line 145
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColumnNames()[Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 152
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :cond_9
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCount()I
    .registers 5

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "count":I
    iget-object v1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v1

    .line 59
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v1, :cond_15

    .line 60
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    if-eqz v3, :cond_12

    .line 61
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 59
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 64
    .end local v2    # "i":I
    :cond_15
    return v0
.end method

.method public whitelist getDouble(I)D
    .registers 4
    .param p1, "column"    # I

    .line 128
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFloat(I)F
    .registers 3
    .param p1, "column"    # I

    .line 122
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public whitelist getInt(I)I
    .registers 3
    .param p1, "column"    # I

    .line 110
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public whitelist getLong(I)J
    .registers 4
    .param p1, "column"    # I

    .line 116
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getShort(I)S
    .registers 3
    .param p1, "column"    # I

    .line 104
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public whitelist getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "column"    # I

    .line 98
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType(I)I
    .registers 3
    .param p1, "column"    # I

    .line 133
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public whitelist isNull(I)Z
    .registers 3
    .param p1, "column"    # I

    .line 139
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public whitelist onMove(II)Z
    .registers 7
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "cursorStartPos":I
    iget-object v1, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v1

    .line 74
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_2b

    .line 75
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    if-nez v3, :cond_11

    .line 76
    goto :goto_28

    .line 79
    :cond_11
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v3, v0

    if-ge p2, v3, :cond_1f

    .line 80
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    iput-object v3, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    .line 81
    goto :goto_2b

    .line 84
    :cond_1f
    iget-object v3, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 74
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 88
    .end local v2    # "i":I
    :cond_2b
    :goto_2b
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_36

    .line 89
    sub-int v3, p2, v0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    .line 90
    .local v2, "ret":Z
    return v2

    .line 92
    .end local v2    # "ret":Z
    :cond_36
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 182
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 183
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_12

    .line 184
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_f

    .line 185
    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 183
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 188
    .end local v1    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 201
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 202
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_12

    .line 203
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_f

    .line 204
    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 202
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 207
    .end local v1    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist requery()Z
    .registers 4

    .line 222
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 223
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_18

    .line 224
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    .line 225
    goto :goto_15

    .line 228
    :cond_d
    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-nez v2, :cond_15

    .line 229
    const/4 v2, 0x0

    return v2

    .line 223
    :cond_15
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 233
    .end local v1    # "i":I
    :cond_18
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 191
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 192
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_12

    .line 193
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_f

    .line 194
    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 192
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 197
    .end local v1    # "i":I
    :cond_12
    return-void
.end method

.method public whitelist unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 211
    iget-object v0, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    .line 212
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_12

    .line 213
    iget-object v2, p0, Landroid/database/MergeCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_f

    .line 214
    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 212
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 217
    .end local v1    # "i":I
    :cond_12
    return-void
.end method

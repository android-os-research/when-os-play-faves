.class public abstract Landroid/preference/PreferenceGroup;
.super Landroid/preference/Preference;
.source "PreferenceGroup.java"

# interfaces
.implements Landroid/preference/GenericInflater$Parent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/Preference;",
        "Landroid/preference/GenericInflater$Parent<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mAttachedToActivity:Z

.field blacklist mCategoryBGColor:I

.field private greylist-max-o mCurrentPreferenceOrder:I

.field blacklist mIsChangedCategoryBG:Z

.field private greylist-max-o mOrderingAsAdded:Z

.field private greylist-max-o mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 94
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 66
    iput-boolean v0, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 73
    iput-boolean v0, p0, Landroid/preference/PreferenceGroup;->mIsChangedCategoryBG:Z

    .line 77
    iput v0, p0, Landroid/preference/PreferenceGroup;->mCategoryBGColor:I

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 85
    sget-object v1, Lcom/android/internal/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 87
    .local v1, "a":Landroid/content/res/TypedArray;
    iget-boolean v2, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 89
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    return-void
.end method

.method private greylist-max-o removePreferenceInt(Landroid/preference/Preference;)Z
    .registers 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 212
    monitor-enter p0

    .line 213
    :try_start_1
    invoke-virtual {p1}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 214
    invoke-virtual {p1}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    if-ne v0, p0, :cond_e

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->assignParent(Landroid/preference/PreferenceGroup;)V

    .line 217
    :cond_e
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 218
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public whitelist addItemFromInflater(Landroid/preference/Preference;)V
    .registers 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 129
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 130
    return-void
.end method

.method public bridge synthetic blacklist addItemFromInflater(Ljava/lang/Object;)V
    .registers 2

    .line 53
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V

    return-void
.end method

.method public whitelist addPreference(Landroid/preference/Preference;)Z
    .registers 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 158
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 160
    return v1

    .line 163
    :cond_a
    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_2c

    .line 164
    iget-boolean v0, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v0, :cond_20

    .line 165
    iget v0, p0, Landroid/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 168
    :cond_20
    instance-of v0, p1, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2c

    .line 171
    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceGroup;

    iget-boolean v2, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 175
    :cond_2c
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->onPrepareAddPreference(Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 176
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_34
    monitor-enter p0

    .line 180
    :try_start_35
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 181
    .local v0, "insertionIndex":I
    if-gez v0, :cond_41

    .line 182
    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 184
    :cond_41
    iget-object v2, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 185
    .end local v0    # "insertionIndex":I
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_5c

    .line 187
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 188
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->assignParent(Landroid/preference/PreferenceGroup;)V

    .line 190
    iget-boolean v0, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    if-eqz v0, :cond_58

    .line 191
    invoke-virtual {p1}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 194
    :cond_58
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 196
    return v1

    .line 185
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "container"    # Landroid/os/Bundle;

    .line 348
    invoke-super {p0, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 351
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 352
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 353
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 355
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method protected whitelist dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "container"    # Landroid/os/Bundle;

    .line 337
    invoke-super {p0, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 340
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 341
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 342
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 344
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method public whitelist findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .registers 7
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 259
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 260
    return-object p0

    .line 262
    :cond_b
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 263
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_34

    .line 264
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 265
    .local v2, "preference":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "curKey":Ljava/lang/String;
    if-eqz v3, :cond_23

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 268
    return-object v2

    .line 271
    :cond_23
    instance-of v4, v2, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_31

    .line 272
    move-object v4, v2

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 273
    invoke-virtual {v4, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 274
    .local v4, "returnedPreference":Landroid/preference/Preference;
    if-eqz v4, :cond_31

    .line 275
    return-object v4

    .line 263
    .end local v2    # "preference":Landroid/preference/Preference;
    .end local v3    # "curKey":Ljava/lang/String;
    .end local v4    # "returnedPreference":Landroid/preference/Preference;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 280
    .end local v1    # "i":I
    :cond_34
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getPreference(I)Landroid/preference/Preference;
    .registers 3
    .param p1, "index"    # I

    .line 147
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    return-object v0
.end method

.method public whitelist getPreferenceCount()I
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected whitelist isOnSameScreenAsChildren()Z
    .registers 2

    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isOrderingAsAdded()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method public whitelist notifyDependencyChange(Z)V
    .registers 5
    .param p1, "disableDependents"    # Z

    .line 319
    invoke-super {p0, p1}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 323
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 324
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 325
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/preference/Preference;->onParentChanged(Landroid/preference/Preference;Z)V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 327
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method protected whitelist onAttachedToActivity()V
    .registers 4

    .line 296
    invoke-super {p0}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 303
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 304
    .local v0, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 305
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->onAttachedToActivity()V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 307
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method protected whitelist onPrepareAddPreference(Landroid/preference/Preference;)Z
    .registers 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 241
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/preference/Preference;->onParentChanged(Landroid/preference/Preference;Z)V

    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist onPrepareForRemoval()V
    .registers 2

    .line 311
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/PreferenceGroup;->mAttachedToActivity:Z

    .line 315
    return-void
.end method

.method public whitelist removeAll()V
    .registers 4

    .line 225
    monitor-enter p0

    .line 226
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 227
    .local v0, "preferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_18

    .line 228
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    invoke-direct {p0, v2}, Landroid/preference/PreferenceGroup;->removePreferenceInt(Landroid/preference/Preference;)Z

    .line 227
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 230
    .end local v0    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    .end local v1    # "i":I
    :cond_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1d

    .line 231
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 232
    return-void

    .line 230
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public whitelist removePreference(Landroid/preference/Preference;)Z
    .registers 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 206
    invoke-direct {p0, p1}, Landroid/preference/PreferenceGroup;->removePreferenceInt(Landroid/preference/Preference;)Z

    move-result v0

    .line 207
    .local v0, "returnValue":Z
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 208
    return v0
.end method

.method public whitelist setOrderingAsAdded(Z)V
    .registers 2
    .param p1, "orderingAsAdded"    # Z

    .line 112
    iput-boolean p1, p0, Landroid/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 113
    return-void
.end method

.method greylist-max-o sortPreferences()V
    .registers 2

    .line 330
    monitor-enter p0

    .line 331
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 332
    monitor-exit p0

    .line 333
    return-void

    .line 332
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

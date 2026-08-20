.class public Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;
.super Ljava/lang/Object;
.source "RuntimeManifestPolicies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyInfo"
.end annotation


# static fields
.field private static final blacklist COERCED_LABEL:Ljava/lang/String; = "coerced_label"

.field private static final blacklist ENABLED:Ljava/lang/String; = "enabled"

.field private static final blacklist ICON:Ljava/lang/String; = "icon"

.field private static final blacklist LABEL:Ljava/lang/String; = "label"

.field private static final blacklist MAX_VALUE:Ljava/lang/String; = "max_value"

.field private static final blacklist MIN_VALUE:Ljava/lang/String; = "min_value"

.field private static final blacklist PRIORITY:Ljava/lang/String; = "priority"

.field private static final blacklist PROPERTY_NAME:Ljava/lang/String; = "property_type"

.field private static final blacklist PROPERTY_VALUE:Ljava/lang/String; = "property_value"

.field private static final blacklist TYPE:Ljava/lang/String; = "type"

.field private static final blacklist VALUE:Ljava/lang/String; = "value"


# instance fields
.field private blacklist mAddedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCoercedLabel:Ljava/lang/CharSequence;

.field private blacklist mEnabled:Z

.field private blacklist mIcon:I

.field private blacklist mLabel:I

.field private blacklist mMaxValue:Ljava/lang/String;

.field private blacklist mMinValue:Ljava/lang/String;

.field private blacklist mPriority:I

.field private blacklist mPropertyName:Ljava/lang/String;

.field private blacklist mPropertyValue:Ljava/lang/String;

.field private blacklist mType:Ljava/lang/String;

.field private blacklist mValue:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mType:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mValue:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMinValue:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMaxValue:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyName:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyValue:Ljava/lang/String;

    .line 106
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mLabel:I

    .line 107
    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mCoercedLabel:Ljava/lang/CharSequence;

    .line 108
    iput v1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mIcon:I

    .line 109
    iput v1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPriority:I

    .line 110
    iput-boolean v1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mEnabled:Z

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public blacklist getCoercedLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mCoercedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getEnabled()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mEnabled:Z

    return v0
.end method

.method public blacklist getIconRes()I
    .registers 2

    .line 140
    iget v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mIcon:I

    return v0
.end method

.method public blacklist getLabelRes()I
    .registers 2

    .line 114
    iget v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mLabel:I

    return v0
.end method

.method public blacklist getMaxValue()J
    .registers 4

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMaxValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 224
    :catch_7
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public blacklist getMinValue()J
    .registers 4

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMinValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 207
    :catch_7
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public blacklist getPriority()I
    .registers 2

    .line 166
    iget v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPriority:I

    return v0
.end method

.method public blacklist getPropertyName()Ljava/lang/String;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPropertyValue()Ljava/lang/String;
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/String;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasCoercedLabel()Z
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "coerced_label"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnabled()Z
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasIcon()Z
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasLabel()Z
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "label"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasMaxValue()Z
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "max_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasMinValue()Z
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "min_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasPriority()Z
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "priority"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasPropertyName()Z
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "property_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasPropertyValue()Z
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "property_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasType()Z
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist hasValue()Z
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string/jumbo v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist setCoercedLabel(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "coercedLabel"    # Ljava/lang/CharSequence;

    .line 131
    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mCoercedLabel:Ljava/lang/CharSequence;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "coerced_label"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 157
    iput-boolean p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mEnabled:Z

    .line 158
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public blacklist setIconRes(I)V
    .registers 4
    .param p1, "icon"    # I

    .line 144
    iput p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mIcon:I

    .line 145
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public blacklist setLabelRes(I)V
    .registers 4
    .param p1, "label"    # I

    .line 118
    iput p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mLabel:I

    .line 119
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "label"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public blacklist setMaxValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 230
    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMaxValue:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "max_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public blacklist setMinValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 213
    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMinValue:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "min_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public blacklist setPriority(I)V
    .registers 4
    .param p1, "priority"    # I

    .line 170
    iput p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPriority:I

    .line 171
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "priority"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public blacklist setPropertyName(Ljava/lang/String;)V
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 243
    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyName:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "property_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method public blacklist setPropertyValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "propertyValue"    # Ljava/lang/String;

    .line 256
    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyValue:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string v1, "property_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method public blacklist setType(Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .line 183
    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mType:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public blacklist setValue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mValue:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mAddedItems:Ljava/util/Set;

    const-string/jumbo v1, "value"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PolicyInfo {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasType()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, " Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, " Value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_29
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasMinValue()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, " MinValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMinValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_3a
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasMaxValue()Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, " MaxValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mMaxValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_4b
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasPropertyName()Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v1, " PropertyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_5c
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasPropertyValue()Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string v1, " PropertyValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPropertyValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_6d
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_7e

    const-string v1, " Priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    :cond_7e
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_8f

    const-string v1, " LabelRes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mLabel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    :cond_8f
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasCoercedLabel()Z

    move-result v1

    if-eqz v1, :cond_a0

    const-string v1, " CoercedLabel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mCoercedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 276
    :cond_a0
    invoke-virtual {p0}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->hasIcon()Z

    move-result v1

    if-eqz v1, :cond_b1

    const-string v1, " Icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestPolicies$PolicyInfo;->mIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    :cond_b1
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

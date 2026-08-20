.class public Landroid/test/mock/MockResources;
.super Landroid/content/res/Resources;
.source "MockResources.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 47
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColor(I)I
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 3

    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDimension(I)F
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDimensionPixelOffset(I)I
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDimensionPixelSize(I)I
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 3

    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIntArray(I)[I
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInteger(I)I
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .registers 5
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .registers 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResourceName(I)Ljava/lang/String;
    .registers 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .registers 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .registers 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1, "id"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 5
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mock object, not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .line 53
    return-void
.end method

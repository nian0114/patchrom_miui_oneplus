.class Lmiui/external/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "dalvik.system.DexPathList"

.field private static final c:Ljava/lang/String; = "dalvik.system.DexPathList$Element"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    instance-of v0, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v0, :cond_1

    const-class v0, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    const-string v4, "dalvik.system.DexPathList"

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v3

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string v1, "dexPathList field not found."

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "dalvik.system.DexPathList$Element"

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string v1, "dexElements field not found."

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/Object;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    invoke-static {p0}, Lmiui/external/b;->b(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    check-cast v0, [Ljava/io/File;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/io/File;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    invoke-static {p0}, Lmiui/external/b;->a(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const-string v1, "dalvik.system.DexPathList$Element"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/io/File;

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string v1, "nativeLibraryDirectories field not found."

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 3

    .prologue
    :try_start_0
    invoke-static {p3}, Lmiui/external/b;->a(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    if-nez p1, :cond_1

    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {p3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, p0, p2, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :goto_0
    invoke-static {v0}, Lmiui/external/b;->a(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiui/external/b;->a(Ljava/lang/Object;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lmiui/external/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lmiui/external/b;->a(Ljava/lang/Object;Ljava/io/File;)V

    :cond_0
    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_1
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {p3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, p0, p1, p2, v2}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

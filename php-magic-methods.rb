cheatsheet do
  title 'PHP Magic Methods'
  docset_file_name 'PHP Magic Methods'
  keyword 'php-magic'

  # introduction 'PHP *Magic* Methods'

  style '
  aside {
    margin: 1em 2em;
    background-color: rgba(0,0,0, 0.025);
    padding: 0.5rem 1rem;
    box-shadow: 0 4px 6px rgba(50,50,93,.11), 0 1px 3px rgba(0,0,0,.08);
    border-left: 4px solid #666;
  }
  details {
    margin-left: 1rem;
  }
  details summary {
    font-weight: bold;
  }
  '

  category do
    id 'Constructors and Destructors'
    entry do
      name '__construct'
      notes <<-'END'
        ----
        ```php
        __construct ([ mixed $args = "" [, $... ]] ) : void
        ```
        <aside>
          The PHP constructor is the first method that is automatically called after the object is created. Each class has a constructor. If you do not explicitly declare it, then there will be a default constructor with no parameters and empty content in the class.
        </aside>
        
        [PHP Manual](https://www.php.net/manual/en/language.oop5.decon.php#object.construct)
        | [PHP Docset](dash://php:__construct)
      END
    end
    entry do
      name '__destruct'
      notes <<-'END'
        ----
        ```php
        __destruct ( void ) : void
        ```
        <aside>
          Destructor allows you to perform some operations before destroying an object, such as closing a file, emptying a result set, and so on
        </aside>

        [PHP Manual](https://www.php.net/manual/en/language.oop5.decon.php#object.destruct)
        | [PHP Docset](dash://php:__destruct)
      END
    end
  end
  category do
    id 'Overloading'
    entry do
      name '__call'
      notes <<-'END'
        ----
        ```php
          public __call ( string $name , array $arguments ) : mixed
        ```

        <aside>

          This method takes two parameters. The first parameter `$function_name` will automatically receive the undefined method name, while the second `$arguments` will receive multiple arguments of the method as an array.

        </aside>
        
        [PHP Manual](https://www.php.net/manual/en/language.oop5.overloading.php#object.call)
      | [PHP Docset](dash://php:__call)
      END
    end
    entry do
      name '__callStatic'
      notes <<-'END'
        ----
        ```php
          public static __callStatic ( string $name , array $arguments ) : mixed
        ```
        <aside>
          This method takes two parameters. The first parameter `$function_name` will automatically receive the undefined method name, while the second `$arguments` will receive multiple arguments of the method as an array.
        </aside>

        [PHP Manual](https://www.php.net/manual/en/language.oop5.overloading.php#object.callstatic)
      | [PHP Docset](dash://php:__callStatic)
      END
    end
    entry do
      name '__get'
      notes <<-'END'
        ----
        ```php
          public __get ( string $name ) : mixed
        ```
        <aside>
          When you try to access a private property of an external object in a program, the program will throw an exception and end execution. We can use the magic method `__get()` to solve this problem. It can get the value of the private property of the object outside the object.
        </aside>

        [PHP Manual](https://www.php.net/manual/en/language.oop5.overloading.php#object.get)
      | [PHP Docset](dash://php:__get)
      END
    end
    entry do
      name '__set'
      notes <<-'END'
        ----

        ```php
          public __set ( string $name , mixed $value ) : void
        ```
        <aside>
          The `__set()` method is used to set the private property of the object. When an undefined property is assigned, the `__set()` method will be triggered and the passed parameters are the property name and value that are set.
        </aside>

        [PHP Manual](https://www.php.net/manual/en/language.oop5.overloading.php#object.set)
      | [PHP Docset](dash://php:__set)
      END
    end
    entry do
      name '__isset'
      notes <<-'END'
        ----

        ```php
          public __isset ( string $name ) : bool
        ```
        <aside>
          `__isset()` is triggered by calling `isset()` or `empty()` on inaccessible (protected or private) or non-existing properties.
        </aside>

        [PHP Manual](https://www.php.net/manual/en/language.oop5.magic.php#object.isset)
      | [PHP Docset](dash://php:__isset)
      END
    end
    entry do
      name '__unset'
      notes <<-'END'
        ----
        ```php
          public __unset ( string $name ) : void
        ```
        <aside>
          `__unset()` is invoked when `unset()` is used on inaccessible (protected or private) or non-existing properties.
        </aside>

        [PHP Manual](https://www.php.net/manual/en/language.oop5.overloading.php#object.unset)
      | [PHP Docset](dash://php:__unset)
      END
    end
  end

  category do
    id 'Object'
    entry do
      name '__sleep'
      notes <<-'END'
        ----
        ```php
        public __sleep ( void ) : array
        ```

        <aside>
          The intended use of `__sleep()` is to commit pending data or perform similar cleanup tasks. Also, the function is useful if you have very large objects which do not need to be saved completely.
        </aside>

        [PHP Manual](https://www.php.net/manual/en/language.oop5.magic.php#object.sleep)
      | [PHP Docset](dash://php:__sleep)
      END
    end
    entry do
      name '__wakeup'
      notes <<-'END'
        ----
        ```php
        public __wakeup ( void ) : void
        ```
        <aside>
          In contrast to the `__sleep()` method, the `__wakeup()` method is often used in deserialize operations, such as re-building a database connection, or performing other initialization operations.
        </aside>

      [PHP Manual](https://www.php.net/manual/en/language.oop5.magic.php#object.wakeup)
    | [PHP Docset](dash://php:__wakeup)
    END
    end
    entry do
      name '__serialize'
      notes <<-'END'
        ----
        ```php
        public __serialize ( void ) : array
        ```
        <aside>
          In contrast to the `__sleep()` method, the `__wakeup()` method is often used in deserialize operations, such as re-building a database connection, or performing other initialization operations.
        </aside>

        [PHP Manual](https://www.php.net/manual/en/language.oop5.magic.php#object.serialize)
      | [PHP Docset](dash://php:__serialize)
      END
    end
    entry do
      name '__unserialize'
      notes <<-'END'
        ----
        ```php
        public __unserialize ( array $data ) : void
        ```

        <aside>
          Checks for the presence of a function with the magic name `__unserialize()`. If present, this function will be passed the restored array that was returned from `__serialize()`. It may then restore the properties of the object from that array as appropriate.
        </aside>

        [PHP Manual](https://www.php.net/manual/en/language.oop5.magic.php#object.unserialize)
      | [PHP Docset](dash://php:__unserialize)
      END
    end
    entry do
      name '__toString'
      notes <<-'END'
        ----
        ```php
        public __toString ( void ) : string
        ```

        <aside>
          Allows a class to decide how it will react when it is treated like a string. For example, what echo `$obj`; will print. This method must return a string, as otherwise a fatal `E_RECOVERABLE_ERROR` level error is emitted.
        </aside>

        [PHP Manual](https://www.php.net/manual/en/language.oop5.magic.php#object.tostring)
      | [PHP Docset](dash://php:__toString)
      END
    end
    entry do
      name '__invoke'
      notes <<-'END'
        ----
        ```php
        __invoke ([ $... ] ) : mixed
        ```

        <aside>
          Called object is used as a function.
        </aside>

        [PHP Manual](https://www.php.net/manual/en/language.oop5.magic.php#object.invoke)
      | [PHP Docset](dash://php:__invoke)
      END
    end
    entry do
      name '\_\_set\_state'
      notes <<-'END'
        ----
        ```php
        static __set_state ( array $properties ) : object
        ```

        <aside>
          <p>
            Starting from PHP 5.1.0, the `__set_state()` method is called automatically when calling `var_export()` to export the class code.
          </p>
          <p>
            The parameters of the `__set_state()` method is an array containing the values of all the properties, with the format of `[property => value,...]`.
          </p>
        </aside>

        [PHP Manual](https://www.php.net/manual/en/language.oop5.magic.php#object.set-state)
      | [PHP Docset](dash://php:__set_state)
      END
    end
    entry do
      name '__clone'
      notes <<-'END'
        ----
        ```php
        __clone ( void ) : void
        ```

        <aside>
          When an object is clone, if a `__clone()` method is defined, then the newly created object's `__clone()` method will be called, to allow any necessary properties that need to be changed.
        </aside>

        [PHP Manual](https://www.php.net/manual/en/language.oop5.cloning.php#object.clone)
      | [PHP Docset](dash://php:__clone)
      END
    end
    entry do
      name '__debugInfo'
      notes <<-'END'
        ----
        ```php
        __debugInfo ( void ) : array
        ```

        <aside>
          This method is called by var_dump() when dumping an object to get the properties that should be shown. If the method isn't defined on an object, then all public, protected and private properties will be shown.
        </aside>

        [PHP Manual](https://www.php.net/manual/en/language.oop5.magic.php#object.debuginfo)
      | [PHP Docset](dash://php:__debugInfo)
      END
    end
  end
end